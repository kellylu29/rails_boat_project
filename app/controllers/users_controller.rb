class UsersController < ApplicationController

  def index

  end

  def show
    @boats = current_user.boats
    @jobs = current_user.jobs
    @boat = Boat.find_by_id(params[:boat_id])
  end

  private

  def user_params
    params.require(:user).permit(:boat_id, :job_id)
  end

end
