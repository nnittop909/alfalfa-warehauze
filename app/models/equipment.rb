class Equipment < ActiveRecord::Base
  has_one :operator, dependent: :destroy
  has_many :equipment_expenses, dependent: :destroy
  has_many :equipment_schedules, dependent: :destroy
	has_many :projects, through: :equipment_schedules

  def to_s
    "#{description} - #{plate_number}"
  end
end
