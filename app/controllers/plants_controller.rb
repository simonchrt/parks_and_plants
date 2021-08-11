class PlantsController < ApplicationController
  before_action :set_garden
  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plants_params)
    @plant.garden = @garden
    if @plant.save
      redirect_to garden_path(@garden)
    else
      render :new
    end
  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy
    redirect_to garden_path(@plant.garden)
  end

  private

  def set_garden
    @garden = Garden.find(params[:garden_id])
  end

  def plants_params
    params.require(:plant).permit(:image_url, :name)
  end
end
