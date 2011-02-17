class CreateIdeas < ActiveRecord::Migration
  def self.up
    create_table :ideas do |t|
      t.text :description
      t.integer :rating
      t.string :neighborhood_id
      t.integer :created_by_id

      t.timestamps
    end
  end

  def self.down
    drop_table :ideas
  end
end
