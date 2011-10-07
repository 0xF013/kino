class ActorProfile < ActiveRecord::Base

  has_many :experiences, :class_name => 'ActorProfileExperience'
  has_many :contracts, :class_name => 'ActorProfileContract'
  has_many :children, :class_name => 'ActorProfileChild'
  has_one :driver_licence
  has_once :model_info, :class_name => 'ActorProfileModelInfo'

end
