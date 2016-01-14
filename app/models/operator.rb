class Operator < ActiveRecord::Base
  belongs_to :equipment
def full_name
  "#{first_name} #{last_name}"
end
end
