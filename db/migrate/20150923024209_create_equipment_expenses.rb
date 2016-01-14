class CreateEquipmentExpenses < ActiveRecord::Migration
  def change
    create_table :equipment_expenses do |t|
      t.string :category
      t.string :description
      t.string :unit
      t.integer :quantity
      t.decimal :amount
      t.belongs_to :equipment, index: true, foreign_key: true
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
