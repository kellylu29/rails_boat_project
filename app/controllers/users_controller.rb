class UsersController < ApplicationController

  def index

  end

  def show
    @boats = current_user.boats
    @jobs = current_user.jobs
  end

end
