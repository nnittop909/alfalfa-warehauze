class CreateOperators < ActiveRecord::Migration
  def change
    create_table :operators do |t|
    	t.belongs_to :equipment, index: true, foreign_key: true
      t.string :first_name
      t.string :last_name

      t.timestamps null: false
    end
  end
end
