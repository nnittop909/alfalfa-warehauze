class PettyCashParticular < ActiveRecord::Base
  belongs_to :petty_cash
  
	# after_commit :set_balance

	# def set_balance
	# 	self.petty_cash.amount - self.amount
	# end
end
