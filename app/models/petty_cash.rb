class PettyCash < ActiveRecord::Base
	has_many :particulars, dependent: :destroy
	has_many :cash_sources, dependent: :destroy

	before_save :set_total_cash_on_hand if present?

	def cash_sources_total
		self.cash_sources.sum(:amount) if present?
	end

	def set_total
		self.cash_on_hand + self.cash_sources.sum(:amount)
	end

	def particulars_total
		self.particulars.sum(:amount) if present?
	end

	def set_total_cash_on_hand
		set_total - self.particulars.sum(:amount)
	end
end
