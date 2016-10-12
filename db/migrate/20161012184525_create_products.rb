class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :amount
      t.string :race
      t.text :description
      t.string :image_url
      t.decimal :price
      t.string :color
      t.integer :age
      t.string :gender
      t.boolean :edible
      t.string :country_origin
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
