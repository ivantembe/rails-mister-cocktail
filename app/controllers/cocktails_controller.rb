class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
    # raise
  end

  def create
    # raise
    @cocktail = Cocktail.new(cocktail_params)

    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def new
    @ingredients = Ingredient.all
    @cocktail = Cocktail.new
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    # raise
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
