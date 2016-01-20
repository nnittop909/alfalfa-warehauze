class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :id_number
      t.string :name
      t.integer :contractor_id
      t.datetime :start_date
      t.datetime :target_date
      t.integer :location_id
      t.decimal :cost

      t.timestamps null: false
    end
  end
end
