class PokemonsController < ApplicationController

  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @pokemons = policy_scope(Pokemon)
    if params[:query].present?
      @pokemons = Pokemon.my_search(params[:query])
    else
      @pokemons = policy_scope(Pokemon)
    end
  end

  def show
    @pokemon = Pokemon.find(params[:id])
    authorize @pokemon
  end

  def new
    @pokemon = Pokemon.new
    authorize @pokemon
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)
    @pokemon.user = current_user
    authorize @pokemon
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
