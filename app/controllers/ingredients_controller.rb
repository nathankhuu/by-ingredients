class IngredientsController < ApplicationController
  def show
    @ingredients = current_user.ingredients
  end

  def new
  	@ingredient = Ingredient.new
  end

  def create
		@ingredient = Ingredient.new
		@ingredient.name = params[:ingredient][:name]
		@ingredient.users << current_user
		@ingredient.save
		redirect_to '/ingredients/show'
	end
end
