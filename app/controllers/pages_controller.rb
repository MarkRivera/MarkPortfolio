class PagesController < ApplicationController
  before_action :require_admin, except: [:index, :show]

  def index
    @project = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.save!
    redirect_to @project
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.update(project_params)
    redirect_to @project
  end

  def destroy
    @project = Project.find(params[:id]).destroy
    flash[:success] = "Project deleted"
    redirect_to root_path
  end

  private
    def project_params
      params.require(:project).permit(:title, :body, :image)
    end
end
