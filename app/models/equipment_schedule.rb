class EquipmentSchedule < ActiveRecord::Base
  belongs_to :project
  belongs_to :equipment

  def number_of_days
    ((self.end_date - self.starting_date)/86400).ceil
  end

end
