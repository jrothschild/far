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
    @publication = Publication.create(params[:publication])
    flash[:success] = "Publication has been created successfully."
    redirect_to "/publications/#{@publication.id}"
  end


end
