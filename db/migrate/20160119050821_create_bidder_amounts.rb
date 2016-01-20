class CreateBidderAmounts < ActiveRecord::Migration
  def change
    create_table :bidder_amounts do |t|
    	t.integer :bid_expense_id
    	t.belongs_to :project, index: true, foreign_key: true
    	t.integer :bidder_id
      t.string :amount

      t.timestamps null: false
    end
  end
end
