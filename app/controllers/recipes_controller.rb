class RecipesController < ApplicationController

  def index
    @recipes = Recipe.where(:user_id => current_user.id)
    render :json => @recipes
  end

  def show
    @recipe = Recipe.new(params[:id])
    render :json => @recipe
  end

  def create
    @recipe = Recipe.new(params[:recipe])
    if @recipe.save
      render :json => @recipe
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    if @recipe.destroy
      render :text => "Successfully destroyed"
    end
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe[:name] = params[:recipe][:name]
    if @recipe.save
      render :json => @recipe
    end
  end

  # Public

  def public
    @recipes = Recipe.where(:public => true)
    render :json => @recipes
  end

  # Favorites

  def favorites
    @recipes = Recipe.where(:favorite => true)
    render :json => @recipes
  end

end

