class CreateLanguageLevels < ActiveRecord::Migration
  def self.up
    create_table :language_levels do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :language_levels
  end
end
