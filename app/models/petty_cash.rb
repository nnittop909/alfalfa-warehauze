class PettyCash < ActiveRecord::Base
	has_many :petty_cash_particulars, dependent: :destroy

end
