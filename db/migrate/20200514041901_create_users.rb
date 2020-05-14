class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :code, default: "", null: false
      t.string :name
      t.string :email

      t.timestamps

      t.index :code, unique: true
      t.index :email, unique: true
    end
  end
end
