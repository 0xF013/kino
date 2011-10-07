class User < ActiveRecord::Base

  has_one :personal_info
  
  after_create {|u| PersonalInfo.create(:user_id => u.id).save(:validate => false) }

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model attr_accessible :email, :password, :password_confirmation, :remember_me, :type_id
end
