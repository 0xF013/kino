class LanguagePersonalInfo < ActiveRecord::Base

  belongs_to :language
  belongs_to :personal_info
  belongs_to :language_level
  

end
