class CreateMicrohoods < ActiveRecord::Migration
  def self.up
    create_table :microhoods do |t|
      t.string :neighborhood
      t.integer :ward
      t.integer :precinct
      t.integer :longitude
      t.integer :latitude

      t.timestamps
    end
  end

  def self.down
    drop_table :microhoods
  end
end
