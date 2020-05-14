class PlantsController < ApplicationController

  # before_action is a filter to do a task before all or certain methods
  # before_action :set_plant, only: [:show, :update, :destroy]

  def all_plants
    @plants = Plant.all
    json_response(@plants)
  end
  
  def index
    # user_id = params[:user_id]
    garden_id = params[:garden_id]
    garden = Garden.find(garden_id)
    @plants = garden.plants
    json_response(@plants)
  end
  
  # POST /plants
  def create
    @plant = Plant.create!(plant_params)
    json_response(@plant, :created)
  end
  def show_original
    set_plant
    json_response(@plant)
    
  end
  
  # GET /plants/:id
  def show
    # @plant = Plant.find(params[:id])
    set_plant
    watering_time = @plant.garden_plants.first.watering_time
    # @plant[:watering_time] = watering_time
    w_times = @plant.attributes
    w_times[:watering_time] = watering_time
    # json_response(@plant)
    json_response(w_times)
  end

  # STRETCH
  # PUT /plants/:id
  # def update
  #   @plant.update(plant_params)
  #   head :no_content
  # end

  # STRETCH
  # DELETE /plants/:id
  # def destroy
  #   @plant.destroy
  #   head :no_content
  # end

  private

  def plant_params
    # whitelist params
    params.permit(
      :name,
      :description,
      :optimal_sun,
      :optimal_soil,
      :planting_considerations,
      :when_to_plant,
      :growing_from_seed,
      :transplanting,
      :spacing,
      :watering,
      :feeding,
      :other_care,
      :diseases,
      :pests,
      :harvesting,
      :storage_use,
      :image_url)
  end

  def set_plant
    @plant = Plant.find(params[:id])
  end
end