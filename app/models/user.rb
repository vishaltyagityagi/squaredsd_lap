class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
has_one :secretcode
 devise :database_authenticatable, :registerable,:recoverable, :rememberable, :trackable, :validatable,:authentication_keys => [:login]

attr_accessor :login

def self.find_for_database_authentication(warden_conditions)
	conditions = warden_conditions.dup
	if login = conditions.delete(:login)
		where(conditions.to_h).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
	else
	where(conditions.to_h).first
	end
end

def admin?
  has_role?(:admin)
end
 
def manually?
  has_role?(:manually)
end 

end


