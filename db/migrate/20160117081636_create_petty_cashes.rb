class CreatePettyCashes < ActiveRecord::Migration
  def change
    create_table :petty_cashes do |t|
      t.decimal :cash_on_hand

      t.timestamps null: false
    end
  end
end
