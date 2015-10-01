class PledgesController < ApplicationController
  def create
    @pledge = Pledge.new(pledge_params)
    @pledge.user_id = current_user.id

    if @pledge.save
    render 'projects/_remaining'
    end
  end

  private
  def pledge_params
    params.require(:pledge).permit(:amount, :reward_id)
  end
end
