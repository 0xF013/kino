class AddIdToLanguagePersonalInfo < ActiveRecord::Migration
  def self.up
    add_column :language_personal_infos, :id, :primary_key
  end

  def self.down
    remove_column :language_personal_infos, :id
  end
end
