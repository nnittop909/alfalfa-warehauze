class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.belongs_to :project, index: true
      t.belongs_to :contractor, index: true
    end
  end
end


