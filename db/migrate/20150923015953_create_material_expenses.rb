class CreateMaterialExpenses < ActiveRecord::Migration
  def change
    create_table :material_expenses do |t|
      t.integer :project_id
      t.integer :contractor_id
      t.string :description
      t.string :unit
      t.integer :quantity
      t.decimal :price

      t.timestamps null: false
    end
  end
end
