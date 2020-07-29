class PlantsController < ApplicationController
  def new
    #<Plant id: nil, height: nil, category: nil, color: nil, flower_number: nil, water: nil, easy_kill: nil, scientific_name: nil, garden_id: nil, created_at: nil, updated_at: nil>
    @plant = Plant.new
    # get this from :garden_id in the params
    @garden = Garden.find(params[:garden_id])
  end

  def create
    #<Plant id: nil, height: "3 meters", category: "flower", color: "red", flower_number: 3, water: false, easy_kill: 4, scientific_name: "plantum gardenium", garden_id: nil, created_at: nil, updated_at: nil>
    @plant = Plant.new(plant_params)
    # assign the plant to the garden from the params
    @garden = Garden.find(params[:garden_id])
    @plant.garden = @garden
    if @plant.save
      redirect_to @garden
    else
      render "new"
    end
  end

  private

  def plant_params
    params.require(:plant).permit(:height, :category, :color, :flower_number, :water, :easy_kill, :scientific_name)
  end
end
