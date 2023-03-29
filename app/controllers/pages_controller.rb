class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @pokemons = current_user.pokemons
    @bookings = current_user.bookings
    @bookings_as_owner = current_user.bookings_as_owner
  end
end
