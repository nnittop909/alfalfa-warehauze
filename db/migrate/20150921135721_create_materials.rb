class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :description
      t.string :unit
      t.decimal :price
      t.integer :quantity
      t.integer :status
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
