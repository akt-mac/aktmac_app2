class AddPlan8ToPlans < ActiveRecord::Migration[5.2]
  def change
    add_column :plans, :plan_8, :integer
  end
end
