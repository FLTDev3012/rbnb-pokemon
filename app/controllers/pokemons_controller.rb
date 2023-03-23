class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all
  end

  def show
    @pokemon = Pokemon.find(params[:id])
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemons = Pokemon.new(pokemon_params)
    @pokemon.user = current_user
    if @garage.save
      redirect_to garage_path(@garage)
    else
      render :new, status: :unprocessable_entity
    end

  end
  private

  def pokemon_params
    params.require(:pokemon).permit(:name, :description, :photo, :type, :price, :level)
  end
end
