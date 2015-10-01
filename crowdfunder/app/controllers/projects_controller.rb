class ProjectsController < ApplicationController
  before_filter :require_login, only: [:new, :create]
  def new
    @project = Project.new
    @reward = @project.rewards.build
  end

  def create
    @project = Project.new(project_params)
    @project.owner_id = current_user.id
    if @project.save
      redirect_to projects_path
      else
        render :new
    end
  end

  def index
    @projects = Project.all
    authorize! :index, @project
  end

  def show
    @project = Project.find(params[:id])
    authorize! :show, @project 
  end

  def destroy
  end

  def edit
  end

  def update
  end

private

  def project_params
    params.require(:project).permit(:title, :description, :goal, :start_date, :end_date, rewards_attributes:[:name, :description, :amount_required])
  end
end
