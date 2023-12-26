class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :password, null: false
      t.string :username, null: false
      t.references :master, null: true, foreign_key: true, default: nil

      t.timestamps
    end
  end
end
