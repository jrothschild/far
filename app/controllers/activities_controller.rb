class ActivitiesController < ApplicationController

  def index
      @activity = Activity.all
  end

  def show
    @activity = Activity.find_by(:id => params[:id])
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = current_user.activities.create(params[:activity])
    flash[:success] = "Activity successfully created."
    redirect_to "/activities/#{@activity.id}"
  end

  def edit
    @activity = Activity.find_by(:id => params[:id])
  end

  def update
    @activity = Activity.find_by(:id => params[:id])
    @activity.update(params[:activity])
    flash[:success] = "Activity Successfully Updated"
    redirect_to "/activities/#{@activity.id}"
  end

  def destroy
    @activity = Activity.find_by(:id => params[:id])
    @activity.destroy
    flash[:success] = "The Activity has been Deleted"
    redirect_to "/activities"
  end




end
