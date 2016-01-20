class BidderAmount < ActiveRecord::Base
	belongs_to :project
	belongs_to :bidder
	belongs_to :bid_expense
	has_many :bid_collections

	def to_s
		"#{bid_expense} - #{bidder} - #{amount}"
	end
end
