class CreateDictPickups < ActiveRecord::Migration[7.1]
  def change
    create_table :dict_pickups do |t|
      t.string :name, null: false
      t.text :description
      t.decimal :price, precision: 10, scale: 2, null: false, default: 0.0

      t.timestamps
    end
  end
end
