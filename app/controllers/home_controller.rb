class HomeController < ApplicationController

  def index
    @boats = current_user.boats.all
  end


end
