class CreateBidders < ActiveRecord::Migration
  def change
    create_table :bidders do |t|
    	t.belongs_to :bidding, index: true, foreign_key: true
    	t.belongs_to :project, index: true, foreign_key: true

      t.string :name

      t.timestamps null: false
    end
  end
end
