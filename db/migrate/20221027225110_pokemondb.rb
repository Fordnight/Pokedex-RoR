class Pokemondb < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemondb do |t|
      t.string :name
      t.string :pokemon_type
      t.string :abilities
      t.string :image

      t.timestamps
    end
  end
end
