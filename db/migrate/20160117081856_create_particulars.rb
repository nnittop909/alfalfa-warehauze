class CreateParticulars < ActiveRecord::Migration
  def change
    create_table :particulars do |t|
      t.belongs_to :petty_cash, index: true, foreign_key: true
      t.integer :project_id
      t.integer :contractor_id
      t.string :recipient
      t.string :description
      t.decimal :amount

      t.timestamps null: false
    end
  end
end
