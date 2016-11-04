class HomeController < ApplicationController
	before_action :authenticate_user!

  def index
  end

  def staff
     @housingdetails = Housingdetail.all
  end

  def supervisor
     @housingdetails = Housingdetail.where(status: 'Waiting')
  end

  def public
     @housingdetails = Housingdetail.where(status: 'Approved')
     render :layout => "aitbanner"
  end

  def wf_approve
  	@housingdetail = Housingdetail.find(params[:id])
    @housingdetail.status = "Approved"
    @housingdetail.save
    flash[:notice] = 'Approved the change'
    redirect_to home_supervisor_url
  end

  def wf_reject
  	@housingdetail = Housingdetail.find(params[:id])
    @housingdetail.status = "Rejected"
    @housingdetail.save
    flash[:notice] = 'Approved the change'
    redirect_to home_supervisor_url
  end

end