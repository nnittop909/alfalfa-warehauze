class MaterialExpense < ActiveRecord::Base
	belongs_to :project
	belongs_to :contractor
	validates :quantity, numericality: true
end
