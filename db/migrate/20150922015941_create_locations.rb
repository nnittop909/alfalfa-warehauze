class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :street
      t.string :brangay
      t.string :municipality
      t.string :province

      t.timestamps null: false
    end
  end
end
