class ProjectsController < ApplicationController
  def new
    @project = Project.new
    @reward = @project.rewards.build
  end

  def create
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
