class Bidder < ActiveRecord::Base
	belongs_to :bidding
	belongs_to :bid_expense
	belongs_to :project
  has_one :bidder_amount

  def to_s
		name
	end

end
