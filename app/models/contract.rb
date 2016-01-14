class Contract < ActiveRecord::Base
  belongs_to :contractor
  belongs_to :project
  delegate :billable_materials, to: :project
end
