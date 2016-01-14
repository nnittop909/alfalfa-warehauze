class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipments do |t|
      t.string :description
      t.string :plate_number
      t.integer :operator_id
      t.string :operator_name
      t.belongs_to :project, index: true, foreign_key: true
      t.integer :status

      t.timestamps null: false
    end
  end
end
