class CreateBidExpenses < ActiveRecord::Migration
  def change
    create_table :bid_expenses do |t|
    	t.belongs_to :bidding, index: true, foreign_key: true
      t.string :description

      t.timestamps null: false
    end
  end
end
