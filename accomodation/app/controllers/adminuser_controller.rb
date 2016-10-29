class AdminuserController < ApplicationController
  before_action :authenticate_user!

  #load_and_authorize_resource

  def index
    @users = User.order(:role_id, created_at: :desc)
    @roles = Role.all
  end

  def port
    if current_user.banstatus == 'Banned' then
      sign_out current_user
      redirect_to :root
    end
  end

  def update
    respond_to do |format|
      if @users.update(user_params)
        format.html { redirect_to adminuser_port_path, notice: 'User details was successfully updated.' }
        format.json { render :show, status: :ok, location: @users }
      else
        format.html { render :edit }
        format.json { render json: @users.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to quotes_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def ban
    user_id = params[:u_id]
    user = User.find(user_id)
    user.banstatus='Banned'
    user.save
    flash[:notice] = 'User Account is Banned'
    redirect_to adminuser_index_path
  end

  def unban
    user_id = params[:u_id]
    user = User.find(user_id)
    user.banstatus='Active'
    user.save
    flash[:notice] = 'User Account is Active'
    redirect_to adminuser_index_path
  end
##
  def staff
    user_id = params[:u_id]
    user = User.find(user_id)
    user.role_id=Role.find_by(name: 'Staff').id
    user.save
    flash[:notice] = 'Staff Role assigned'
    redirect_to adminuser_index_path
  end

  def manager
    user_id = params[:u_id]
    user = User.find(user_id)
    user.role_id=Role.find_by(name: 'Manager').id
    user.save
    flash[:notice] = 'Manager Role assigned'
    redirect_to adminuser_index_path
  end

  def admin
    user_id = params[:u_id]
    user = User.find(user_id)
    user.role_id=Role.find_by(name: 'Admin').id
    user.save
    flash[:notice] = 'Admin Role assigned'
    redirect_to adminuser_index_path
  end


  def listroom
    @rooms = Roomlist.where(status: 'Waiting')

  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_quote
    @quote = Quote.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def users_params
    params.require(:user).permit(:email)
  end

end
