class BidExpense < ActiveRecord::Base
	belongs_to :bidding
	has_one :bidder_amount

	def to_s
		description
	end
end
