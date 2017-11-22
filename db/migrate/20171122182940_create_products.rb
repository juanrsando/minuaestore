class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.references :category, foreign_key: true
      t.string :size
      t.string :color
      t.float :price

      t.timestamps
    end
  end
end
