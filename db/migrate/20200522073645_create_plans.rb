class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.date :planned_on
      t.integer :plan_1
      t.integer :plan_2
      t.integer :plan_3
      t.integer :plan_4
      t.integer :plan_5
      t.integer :plan_6
      t.integer :plan_7
      t.integer :day_off
      t.string :note
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
