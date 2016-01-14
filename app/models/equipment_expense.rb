class EquipmentExpense < ActiveRecord::Base
  belongs_to :equipment
  belongs_to :project
  validates :quantity, numericality: true

  def self.categories
  	%w(Repair Gas-Refill Spare-Part)
  end
end
