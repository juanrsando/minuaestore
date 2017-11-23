class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name, default:"NOT GIVEN"
      t.text :description, default:"NOT GIVEN"
      t.references :category, foreign_key: true
      t.string :size, default:"NOT GIVEN"
      t.string :color, default:"NOT GIVEN"
      t.float :price, default:0

      t.timestamps
    end
  end
end
