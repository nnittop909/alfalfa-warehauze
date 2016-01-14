class Location < ActiveRecord::Base
  has_many :projects

  def to_s
  	if self.street.present?
    	"#{street}, #{brangay}, #{municipality}, #{province}"
    else
    	"#{brangay}, #{municipality}, #{province}"
    end
  end
end
