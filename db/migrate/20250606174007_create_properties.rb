class CreateProperties < ActiveRecord::Migration[7.2]
  def change
    create_table :properties do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.string :property_type
      t.text :address
      t.string :city
      t.string :district
      t.integer :square_meters
      t.string :room_count
      t.integer :bathroom_count
      t.integer :building_age
      t.integer :floor
      t.integer :total_floors
      t.boolean :furnished
      t.boolean :balcony
      t.boolean :parking
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
