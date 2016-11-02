class StudenthousinginfosController < ApplicationController
  before_action :set_studenthousinginfo, only: [:show, :edit, :update, :destroy]

  # GET /studenthousinginfos
  # GET /studenthousinginfos.json
  def index
    @studenthousinginfos = Studenthousinginfo.all
  end

  # GET /studenthousinginfos/1
  # GET /studenthousinginfos/1.json
  def show
  end

  # GET /studenthousinginfos/new
  def new
    @studenthousinginfo = Studenthousinginfo.new
  end

  # GET /studenthousinginfos/1/edit
  def edit
  end

  # POST /studenthousinginfos
  # POST /studenthousinginfos.json
  def create
    @studenthousinginfo = Studenthousinginfo.new(studenthousinginfo_params)
    @studenthousinginfo.status = 'Waiting for Approval'

    respond_to do |format|
      if @studenthousinginfo.save
        format.html { redirect_to @studenthousinginfo, notice: 'Studenthousinginfo was successfully created.' }
        format.json { render :show, status: :created, location: @studenthousinginfo }
      else
        format.html { render :new }
        format.json { render json: @studenthousinginfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studenthousinginfos/1
  # PATCH/PUT /studenthousinginfos/1.json
  def update
    before_update

    @studenthousinginfo.status = 'Waiting for Approval'

    respond_to do |format|
      if @studenthousinginfo.update(studenthousinginfo_params)
        format.html { redirect_to @studenthousinginfo, notice: 'Studenthousinginfo was successfully updated.' }
        format.json { render :show, status: :ok, location: @studenthousinginfo }
      else
        format.html { render :edit }
        format.json { render json: @studenthousinginfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studenthousinginfos/1
  # DELETE /studenthousinginfos/1.json
  def destroy
    @studenthousinginfo.destroy
    respond_to do |format|
      format.html { redirect_to roomlists_url, notice: 'Studenthousinginfo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def before_update
    @housinginfo = Studenthousinginfo.new
    @housinginfo.version = Studenthousinginfo.find(params[:id]).version
    @housinginfo.category = Studenthousinginfo.find(params[:id]).category
    @housinginfo.roomsize = Studenthousinginfo.find(params[:id]).roomsize
    @housinginfo.rent = Studenthousinginfo.find(params[:id]).rent
    @housinginfo.detail = Studenthousinginfo.find(params[:id]).detail
    @housinginfo.status = Studenthousinginfo.find(params[:id]).status
    @housinginfo.save
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_studenthousinginfo
      @studenthousinginfo = Studenthousinginfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def studenthousinginfo_params
      params.require(:studenthousinginfo).permit(:version, :category, :roomsize, :rent, :detail)
    end
end
