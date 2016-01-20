class CreateBidCollections < ActiveRecord::Migration
  def change
    create_table :bid_collections do |t|
    	t.belongs_to :project, index: true, foreign_key: true
      t.integer :bid_amount_id
      t.string :billing_name
      t.decimal :amount

      t.timestamps null: false
    end
  end
end
