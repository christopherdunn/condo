class ProjectsController < ApplicationController
  before_action :authenticate_user!

  def index
    @hoa = Hoa.find(params[:hoa_id])
    @projects = Project.where(hoa_id: params[:hoa_id])
  end

  # GET /articles/1
  def show
    @hoa = Hoa.find(params[:hoa_id])
    @project = Project.find(params[:id])
  end

end
