class PledgesController < ApplicationController
  def create
    @pledge = Pledge.new(pledge_params)
    @pledge.user_id = current_user.id
    @pledge.save
    @project = @pledge.project

    respond_to do |format|
      format.js
    end
  end

  private
  def pledge_params
    params.require(:pledge).permit(:amount, :reward_id)
  end
end
