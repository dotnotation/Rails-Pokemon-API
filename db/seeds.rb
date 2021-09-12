# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pokemons = [
    "Bulbasaur",
    "Charizard",
    "Eevee",
    "Snorlax",
    "Charmander"
]

def catch_pokemon(pokemon)
    request = PokeApi.get "https://pokeapi.co/api/v2/pokemon/#{id}/"
    api_hash = JSON.parse(request)
end

def hatch_pokemon(pokemon)
    api_hash = catch_pokemon(pokemon)
    attributes = {}
    attributes[:name] = api_hash["name"]
    attributes[:base_experience] = api_hash["base_experience"]
    attributes[:height] = api_hash["height"]
    attributes[:weight] = api_hash["weight"]
    attributes[:pokemon_id] = api_hash["id"]
    Pokemon.create(attributes)
end

pokemons.each {|pokemon| hatch_pokemon(pokemon)}
