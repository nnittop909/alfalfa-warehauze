class BillableMaterial < ActiveRecord::Base
  belongs_to :project
  belongs_to :material
  belongs_to :contractor
  delegate :description, :unit, :price,  to: :material
  delegate :name, to: :project, prefix: true

  validates :quantity, numericality: true

  before_save :set_price

  def update_quantity_of_material_on_save
    self.material.update_attributes(:quantity => self.material.quantity - self.quantity)
  end

  def update_quantity_of_material_on_destroy
    self.material.update_attributes(:quantity => self.material.quantity + self.quantity)
  end

  def total_price
    quantity * material.price
  end
  
  def self.total_billable_material
    self.sum(:price)
  end

  def set_price
    self.price = self.total_price
  end
end
