class CitizenshipsPersonalInfos < ActiveRecord::Migration
  def self.up
    create_table :citizenships_personal_infos, :id => false do |t|
      t.integer :citizenship_id
      t.integer :personal_info_id
    end
  end

  def self.down
    drop_table :citizenships_personal_infos
  end
end
