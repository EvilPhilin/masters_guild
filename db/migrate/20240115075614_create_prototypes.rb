class CreatePrototypes < ActiveRecord::Migration[7.1]
  def change
    create_table :prototypes do |t|
      t.references :dict_body, null: false, foreign_key: true
      t.references :dict_neck, null: false, foreign_key: true
      t.references :dict_pickup, null: false, foreign_key: true
      t.references :user, null: true, foreign_key: true, default: nil

      t.timestamps
    end
  end
end
