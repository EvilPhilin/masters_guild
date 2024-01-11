class CreateDictNecks < ActiveRecord::Migration[7.1]
  def change
    create_table :dict_necks do |t|
      t.string :name
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end
