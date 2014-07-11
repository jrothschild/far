class UsersController < ApplicationController

  def index
    @user = User.all
  end

  def show
    @user = User.find_by(:id => params[:id])
    # @activities = @user.activities
    @activities = @user.activities.group_by {|activity| activity.service_type}
    puts "QQQQQQQ"
    puts @activities

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
    
  

end