class HousingdetailsController < ApplicationController
  before_action :set_housingdetail, only: [:show, :edit, :update, :destroy]

  # GET /housingdetails
  # GET /housingdetails.json
  def index
    @housingdetails = Housingdetail.all
  end

  # GET /housingdetails/1
  # GET /housingdetails/1.json
  def show
  end

  # GET /housingdetails/new
  def new
    @housingdetail = Housingdetail.new
  end

  # GET /housingdetails/1/edit
  def edit
  end

  # POST /housingdetails
  # POST /housingdetails.json
  def create
    @housingdetail = Housingdetail.new(housingdetail_params)
    @housingdetail.status = 'Waiting'

    respond_to do |format|
      if @housingdetail.save
        format.html { redirect_to @housingdetail, notice: 'Housingdetail was successfully created.' }
        format.json { render :show, status: :created, location: @housingdetail }
      else
        format.html { render :new }
        format.json { render json: @housingdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /housingdetails/1
  # PATCH/PUT /housingdetails/1.json
  def update
    @housingdetail.status = 'Waiting'
    
    respond_to do |format|
      if @housingdetail.update(housingdetail_params)
        format.html { redirect_to @housingdetail, notice: 'Housingdetail was successfully updated.' }
        format.json { render :show, status: :ok, location: @housingdetail }
      else
        format.html { render :edit }
        format.json { render json: @housingdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /housingdetails/1
  # DELETE /housingdetails/1.json
  def destroy
    @housingdetail.destroy
    respond_to do |format|
      format.html { redirect_to housingdetails_url, notice: 'Housingdetail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_housingdetail
      @housingdetail = Housingdetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def housingdetail_params
      params.require(:housingdetail).permit(:versionid, :category, :size, :rent, :details)
    end
end
