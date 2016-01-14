class Material < ActiveRecord::Base
  has_many :billable_materials
  has_many :projects, through: :billable_materials
  validates :quantity, numericality: true

  def to_s
    description
  end

end
