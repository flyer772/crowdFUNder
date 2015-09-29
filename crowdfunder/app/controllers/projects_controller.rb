class ProjectsController < ApplicationController
  def new
    @project = Project.new
    @reward = @project.rewards.build
  end

  def create
    @project = Project.new(project_params)
    # @project.owner_id = current_user.id
    if @project.save
      redirect_to projects_path
      else
        render.new
    end
  end

  def index
  end

  def show
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