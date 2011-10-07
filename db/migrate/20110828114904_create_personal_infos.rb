class CreatePersonalInfos < ActiveRecord::Migration
  def self.up
    create_table :personal_infos do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :gender, :default => true
      t.date :dob
    end
  end

  def self.down
    drop_table :personal_infos
  end
end
