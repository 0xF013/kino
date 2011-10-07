class CreateActorProfileModelInfos < ActiveRecord::Migration
  def self.up
    create_table :actor_profile_model_infos do |t|
      t.integer :actor_profile_id
      t.integer :chest
      t.integer :waist
      t.integer :hip
      t.integer :show_size
      t.integer :hair_length
      t.string :constitution
      t.string :clothing_size
      t.string :eye_color
      t.string :hair_color
      t.string :appearence

      t.timestamps
    end
  end

  def self.down
    drop_table :actor_profile_model_infos
  end
end
