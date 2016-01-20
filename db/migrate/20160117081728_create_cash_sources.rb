class CreateCashSources < ActiveRecord::Migration
  def change
    create_table :cash_sources do |t|
    	t.string :description
      t.decimal :amount
      t.belongs_to :petty_cash, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
