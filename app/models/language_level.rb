class LanguageLevel < ActiveRecord::Base
  has_many :language_personal_infos
  accepts_nested_attributes_for :language_personal_infos
end
