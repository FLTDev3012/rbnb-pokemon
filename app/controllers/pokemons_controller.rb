class PokemonsController < ApplicationController
  def index
    @pokemons = policy_scope(Pokemon)
  end

  def show
    @pokemon = Pokemon.find(params[:id])
    authorize @garage
  end

  def new
    @pokemon = Pokemon.new
    authorize @garage
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)
    @pokemon.user = current_user
    authorize @garage
    if @pokemon.save
      redirect_to pokemon_path(@pokemon)
    else
      render :new, status: :unprocessable_entity
    end

  end

  private

  def pokemon_params
    params.require(:pokemon).permit(:name, :description, :photo, :pokemon_type, :price, :level)
  end
end
