class CreateLanguagePersonalInfos < ActiveRecord::Migration
  def self.up
    create_table :language_personal_infos, :id => false do |t|
      t.integer :language_id
      t.integer :level_id
      t.integer :personal_info_id

      t.timestamps
    end
  end

  def self.down
    drop_table :language_personal_infos
  end
end
