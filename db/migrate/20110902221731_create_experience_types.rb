class CreateExperienceTypes < ActiveRecord::Migration
  def self.up
    create_table :experience_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :experience_types
  end
end
