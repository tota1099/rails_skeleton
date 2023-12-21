class Api::V1::RecipesController < ApplicationController
  before_action :set_recipe, only: %i[show destroy]

  def index
    recipe = [{ name: "teste", id: 1 }, { id: 2, name: "teste 2" }]
    render json: recipe
  end

  def create
    render json: recipe_params
  end

  def show
    render json: @recipe
  end

  def destroy
    render json: { message: 'Recipe deleted!' }
  end

  private

  def recipe_params
    params.permit(:name, :image, :ingredients, :instruction)
  end

  def set_recipe
    @recipe = { name: "teste", id: 1 }
  end
end
