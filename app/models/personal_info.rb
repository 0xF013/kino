class PersonalInfo < ActiveRecord::Base

  belongs_to :user
  has_many :languages, :through => :language_personal_infos
  has_many :language_personal_infos
  has_and_belongs_to_many :citizenships
  belongs_to :location
  
  accepts_nested_attributes_for :languages, :language_personal_infos, :citizenships, :allow_destroy => true
  
  validates :first_name,:last_name, :location_id, :presence => true
  
  validate :require_citizenship
  
  def require_citizenship
    errors.add :base, "Citizenship required" if citizenships.count == 0
  end
  
  
end
