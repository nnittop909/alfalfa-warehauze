class CreatePettyCashParticulars < ActiveRecord::Migration
  def change
    create_table :petty_cash_particulars do |t|
      t.string :particular
      t.integer :quantity
      t.string :unit
      t.decimal :amount
      t.belongs_to :petty_cash, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
