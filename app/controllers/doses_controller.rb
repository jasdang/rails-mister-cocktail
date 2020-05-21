class DosesController < ApplicationController
  before_action :set_instances, only: [:new, :create]

  def new
  end

  def create
    @dose.description = params[:dose][:description]
    @dose.ingredient = Ingredient.find(params[:dose][:ingredient_id])
    if @dose.save
      redirect_to cocktail_path(params[:cocktail_id])
    else
      render :new
    end
  end

  def destroy
  end

  private

  def set_instances
    @dose = Dose.new()
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
  end
end
