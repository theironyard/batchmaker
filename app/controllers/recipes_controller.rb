class RecipesController < ApplicationController

  def index
    # @recipes = Recipe.where(:user_id => current_user.id)
    @recipes = Recipe.all
    render "collection", :layout => false
  end

  def show
    @recipe = Recipe.find(params[:id])
    render "show", :layout => false
  end

  def create
    @recipe = Recipe.new(params[:recipe])
    if @recipe.save
      render "show", :layout => false
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
      render "show", :layout => false
    end
  end

  # Public

  def public
    @recipes = Recipe.where(:public => true)
    render "collection", :layout => false
  end

  # Favorites

  def favorites
    @recipes = Recipe.where(:favorite => true)
    render "collection", :layout => false
  end

end

