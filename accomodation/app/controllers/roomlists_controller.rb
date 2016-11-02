class RoomlistsController < ApplicationController
  before_action :set_roomlist, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!

  # GET /roomlists
  # GET /roomlists.json
  def index
    #@roomlists = Roomlist.where(["status != ?" , 'Waiting' ]).order(created_at: :desc)
    @roomlists = Roomlist.all.order(:status, created_at: :desc)
    @studenthousinginfos = Studenthousinginfo.all
  end

  # GET /roomlists/1
  # GET /roomlists/1.json
  def show
  end

  # GET /roomlists/new
  def new
    @roomlist = Roomlist.new
  end

  # GET /roomlists/1/edit
  def edit
  end

  # POST /roomlists
  # POST /roomlists.json
  def create

    @allrooms = Roomlist.all
    allocatedflag = 'No'
    note = ''
    @roomlist = Roomlist.new(roomlist_params)
    @roomlist.status = 'Waiting'

    if @allrooms.where(studentid: @roomlist.studentid).count != 0
      note = 'student already has room, you must first deallocated him'
      allocatedflag = 'YesStudent'
    elsif @allrooms.where(cat: @roomlist.cat,dorm: @roomlist.dorm ,room: @roomlist.room,abc: @roomlist.abc).count != 0 then
      note = 'Room is already taken, you must first deallocated it'
      allocatedflag = 'YesRoom'
      end

    if allocatedflag != 'No'
      # redirect_to action: :index , flash: { notice: "Watch it, mister!" }
      redirect_to roomlists_path , flash: { notice: note } and return false
    end

    respond_to do |format|
      if @roomlist.save
        #format.html { redirect_to @roomlist, notice: 'Roomlist was succe ssfully created.' }
        format.html { redirect_to @roomlist, notice: 'Room was successfully Allocated.' }
        format.json { render :show, status: :created, location: @roomlist }
      else
        format.html { render :new }
        format.json { render json: @roomlist.errors, status: :unprocessable_entity }
      end
      end
  end

  # PATCH/PUT /roomlists/1
  # PATCH/PUT /roomlists/1.json
  def update
    respond_to do |format|
      if @roomlist.update(roomlist_params)
        #format.html { redirect_to @roomlist, notice: 'Roomlist was successfully updated.' }
        format.html { redirect_to @roomlist, notice: 'Room was successfully Allocated.' }
        format.json { render :show, status: :ok, location: @roomlist }
      else
        format.html { render :edit }
        format.json { render json: @roomlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roomlists/1
  # DELETE /roomlists/1.json
  def destroy
    @roomlist.destroy
    respond_to do |format|
      format.html { redirect_to roomlists_url, notice: 'Roomlist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roomlist
      @roomlist = Roomlist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def roomlist_params
      params.require(:roomlist).permit(:cat, :dorm, :room, :abc, :studentid, :status)
    end
end
