class IngredientsController < ApplicationController
  def show
    @search_term = params[:looking_for] || 'chocolate, strawberry'
    @recipes = Recipe.for(@search_term)
  end

  def new
  	@ingredient = Ingredient.new
  end

  def create
		@ingredient = Ingredient.new
		@ingredient.name = params[:ingredient][:name]
		@ingredient.users << current_user
		@ingredient.save
		redirect_to 'ingredients/show'
	end
end
