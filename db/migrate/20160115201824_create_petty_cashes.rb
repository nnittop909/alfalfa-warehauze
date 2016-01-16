class CreatePettyCashes < ActiveRecord::Migration
  def change
    create_table :petty_cashes do |t|
      t.string :cash_recipient
      t.string :purpose
      t.decimal :amount

      t.timestamps null: false
    end
  end
end
