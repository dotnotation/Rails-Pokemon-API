class PokemonsController < ApplicationController
    def index
        @pokemons = PokeApi.get(pokemon: {limit: 15})
    end

    def show
        @pokemon = PokeApi.get(url)
    end
end
