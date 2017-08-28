class BoatsController < ApplicationController
  before_action :set_boat, only: [:show, :edit, :update, :destroy]

  def index
    @boats = current_user.boats.all
  end

  def show
  end

  def new
    @boat = Boat.new
  end

  def edit
  end

  def create
    @boat = current_user.boats.new(boat_params)

    respond_to do |format|
      if @boat.save
        format.html { redirect_to @boat, notice: 'Boat was successfully created.' }
        format.json { render :show, status: :created, location: @boat }
      else
        format.html { render :new }
        format.json { render json: @boat.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @boat.update(boat_params)
        format.html { redirect_to @boat, notice: 'Boat was successfully updated.' }
        format.json { render :show, status: :ok, location: @boat }
      else
        format.html { render :edit }
        format.json { render json: @boat.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @boat.destroy
    respond_to do |format|
      format.html { redirect_to boats_url, notice: 'Boat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boat
      @boat = Boat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boat_params
      params.require(:boat).permit(:user_id, :job_id, :name, :containers, :location, :image)
    end
end
