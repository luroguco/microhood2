class CreateIdeas < ActiveRecord::Migration
  def self.up
    create_table :ideas do |t|
      t.text :description
      t.integer :rating
      t.string :location
      t.integer :user_id

      t.timestamps
    end
  add_index :ideas, :user_id
  end

  def self.down
    drop_table :ideas
  end
end
