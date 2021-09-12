class PokemonsController < ApplicationController
    def index
        pokemons = params[:pokemons]
        @pokemons = PokeApi.get(pokemons)
    end
end
