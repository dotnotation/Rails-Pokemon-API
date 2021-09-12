class AddPokemonIdToPokemon < ActiveRecord::Migration[6.1]
  def change
    add_column :pokemons, :pokemon_id, :integer 
  end
end
