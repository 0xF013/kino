class CreateCitizenships < ActiveRecord::Migration
  def self.up
    create_table :citizenships do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :citizenships
  end
end
