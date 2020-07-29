class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :height
      t.string :category
      t.string :color
      t.integer :flower_number
      t.boolean :water
      t.integer :easy_kill
      t.string :scientific_name
      t.references :garden, null: false, foreign_key: true

      t.timestamps
    end
  end
end
