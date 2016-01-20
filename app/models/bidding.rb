class Bidding < ActiveRecord::Base
  belongs_to :project
  has_many :bid_expenses
  has_many :bidders
  has_one :bidder_amount

  accepts_nested_attributes_for :bidders

end
