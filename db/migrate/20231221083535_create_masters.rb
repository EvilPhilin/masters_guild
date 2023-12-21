class CreateMasters < ActiveRecord::Migration[7.1]
  def change
    create_table :masters do |t|
      t.string :name, null: false
      t.string :surname, null: false
      t.text :about_me

      t.timestamps
    end
  end
end
