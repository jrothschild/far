class PublicationsController < ApplicationController

  def index
    @publication = Publication.all
  end

  def show
    @publication = Publication.find_by(:id => params[:id])
  end


  def new
    @publication = Publication.new
  end

  def create
    @publication = current_user.publications.create(params[:publication])
    flash[:success] = "Publication has been created successfully."
    redirect_to "/publications/#{@publication.id}"
  end


  def edit
    @publication = Publication.find_by(:id => params[:id])
  end

  def update
    @publication = Publication.find_by(:id => params[:id])
    @publication.update(params[:publication])
    flash[:success] = "Publication Successfully Updated"
    redirect_to "/publications/#{@publication.id}"
  end

  def destroy
    @publication = Publication.find_by(:id => params[:id])
    @publication.destroy
    flash[:success] = "The Publication has been Deleted"
    redirect_to "/publications"
  end


end
