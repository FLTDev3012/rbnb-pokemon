class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :description
      t.string :type
      t.float :price
      t.integer :level

      t.timestamps
    end
  end
end
