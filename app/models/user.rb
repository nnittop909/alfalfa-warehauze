class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :role
  before_create :set_default_role  

  validates :username, :uniqueness => {:case_sensitive => false}
  
  private  
	  def set_default_role  
	    self.role ||= Role.find_by_name('user')  
	  end

  # def self.find_first_by_auth_conditions(warden_conditions)
  #   conditions = warden_conditions.dup
  #   where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => signin.downcase }]).first
  # end
end
