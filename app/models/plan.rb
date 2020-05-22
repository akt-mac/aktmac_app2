class Plan < ApplicationRecord
  belongs_to :user

  validates :planned_on, presence: true
  validates :plan_1, length: { maximum: 2 }
  validates :plan_2, length: { maximum: 2 }
  validates :plan_3, length: { maximum: 2 }
  validates :plan_4, length: { maximum: 2 }
  validates :plan_5, length: { maximum: 2 }
  validates :plan_6, length: { maximum: 2 }
  validates :plan_7, length: { maximum: 2 }
  validates :day_off, length: { maximum: 2 }
  validates :note, length: { maximum: 300 }
end
