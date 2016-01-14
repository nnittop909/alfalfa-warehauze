class CreateBillableMaterials < ActiveRecord::Migration
  def change
    create_table :billable_materials do |t|
      t.belongs_to :project, index: true, foreign_key: true
      t.belongs_to :material, index: true, foreign_key: true
      t.belongs_to :contractor, index: true, foreign_key: true
      t.integer :quantity
      t.decimal :price

      t.timestamps null: false
    end
  end
end
