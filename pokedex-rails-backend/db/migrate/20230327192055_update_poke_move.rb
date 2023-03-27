class UpdatePokeMove < ActiveRecord::Migration[7.0]
  def change
    remove_index :poke_moves, :pokemon_id
  end
end
