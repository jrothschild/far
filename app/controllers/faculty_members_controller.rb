class FacultyMembersController < ApplicationController

  def index
    @faculty_member = FacultyMember.all
  end

  def show
    @faculty_member = FacultyMember.find_by(:id => params[:id])
    # @activities = @user.activities
    # @publicatins = @user.publications
  end

  def new
    @faculty_member = FacultyMember.new
  end

  def create
    @faculty_member = FacultyMember.create(params[:faculty_member])
    flash[:success] = "Faculty Member successfully created."
    redirect_to "/faculty_members/#{@faculty_member.id}"
  end

  def edit
    @faculty_member = FacultyMember.find_by(:id => params[:id])
  end

  def update
    @faculty_member = FacultyMember.find_by(:id => params[:id])
    @faculty_member.update(params[:faculty_member])
    flash[:success] = "Faculty Member Successfully Updated"
    redirect_to "/faculty_members/#{@faculty_member.id}"
  end

  def destroy
    @faculty_member = FacultyMember.find_by(:id => params[:id])
    @faculty_member.destroy
    flash[:success] = "The Faculty Profile has been Deleted"
    redirect_to "/faculty_members"
  end
    
  

end