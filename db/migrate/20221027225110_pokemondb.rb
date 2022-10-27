class Pokemondb < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemondb do |t|
      t.string :Name
      t.string :Type
      t.string :Abilities

      t.timestamps
    end
  end
end
