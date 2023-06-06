class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.text :description
      t.string :location
      t.string :type
      t.string :image
      t.integer :price
      t.string :category
      t.integer :no_of_bedrooms

      t.timestamps
    end
  end
end
