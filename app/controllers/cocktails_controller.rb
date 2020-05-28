class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktails.all
  end

  def show
    @cocktail = Cocktails.find(params[:id])
  end

  def new
    @cocktail = Cocktails.new
  end

  def create
    @cocktail = Cocktails.new(cocktail_params)
    @cocktail.save
  end
end
