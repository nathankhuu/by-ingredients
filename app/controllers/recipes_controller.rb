require 'set'

class RecipesController < ApplicationController
  def show
    @search_term = params[:looking_for]
    @recipes = Recipe.for(@search_term)
    @ingredients = Recipe.get_ingredients(@recipes.first["recipe_id"])
  end
end