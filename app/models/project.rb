class Project < ActiveRecord::Base
  has_many :contracts
  has_many :uploads
  has_many :contractors, through: :contracts
  has_many :billable_materials, dependent: :destroy
  has_many :materials, through: :billable_materials
  has_many :equipment_schedules, dependent: :destroy
  has_many :equipments, through: :equipment_schedules
  has_many :equipment_expenses
  belongs_to :location
  has_many :project_locations, through: :locations
  has_many :material_expenses
  
  def sub_totals
   self.billable_materials.map { |i| i.total_price }  
  end

  def total_all
   sub_totals.sum
  end

	def total_expenses
	  self.material_expenses.sum(:price) + self.equipment_expenses.sum(:amount) + self.billable_materials.sum(:price) 
	end

  def actual_total_duration
    ((self.start_date.to_i-self.target_date.to_i)/86400).abs
  end
  def date_now
    now = Date.today
  end
  def now_ms
    date_now.to_datetime.to_f
  end
  def actual_start_ms
    self.start_date.to_datetime.to_f
  end
  def actual_end_ms
    self.target_date.to_datetime.to_f
  end
  def one_day
    60 * 60 * 24
  end
  def actual_past_days
    ((now_ms - actual_start_ms)/one_day)
  end
  def actual_rem_days
    (actual_total_duration.to_i - actual_past_days).ceil
  end
  def actual_percentage
    ((actual_past_days*100)/(actual_total_duration.to_i)).ceil
  end

end
