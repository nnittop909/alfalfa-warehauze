class Contractor < ActiveRecord::Base
  has_many :contracts
  has_many :projects, through: :contracts
  has_many :billable_materials
  has_many :material_expenses

  def to_s
    company
  end
  def full_name
    "#{first_name} #{last_name}"
  end
end
# class Contractor < ActiveRecord::Base
#   has_many :contracts
#   has_many :projects, through: :contracts
# end

# class Contract < ActiveRecord::Base
#   belongs_to :contractor
#   belongs_to :project
# end

# class Project < ActiveRecord::Base
#   has_many :contractors
# end
