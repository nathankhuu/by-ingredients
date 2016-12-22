class RecipesController < ApplicationController
  def show
    @search_term = params[:looking_for] || 'chocolate'
    @recipes = Recipe.for(@search_term)
  end
end