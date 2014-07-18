class UsersController < ApplicationController

  def index
    @users = User.order("last_name")
    respond_with(@users)
  end

  def all
   @user = User.all
    
    
  end

  def show
    @user = User.find_by(:id => params[:id])
    # @activities = @user.activities
    @activities = @user.activities.group_by {|activity| activity.service_type}
    @publications = @user.publications
    respond_with(@user)

  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    flash[:success] = "Faculty Member successfully created."
    redirect_to "/users/#{@user.id}"
  end

  def edit
    @user = User.find_by(:id => params[:id])
  end

  def update
    @user = User.find_by(:id => params[:id])
    @user.update(params[:user])
    flash[:success] = "Faculty Member Successfully Updated"
    redirect_to "/users/#{@user.id}"
  end

  def destroy
    @user = User.find_by(:id => params[:id])
    @user.destroy
    flash[:success] = "The Faculty Profile has been Deleted"
    redirect_to "/users"
  end
    
  def user_params
    return params.require(:user).permit(:prefix, :first_name, :middle_name, :last_name, :email, :phone)
  end
  

end