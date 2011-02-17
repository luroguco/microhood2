# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
Microhood.create(:id => 1,
              :neighborhood => 'South End',
              :ward => 3,
              :precinct => 15,
              :created_at => 1030,
              :updated_at => 1045)






# == Schema Information
#
# Table name: microhoods
#
#  id           :integer         not null, primary key
#  neighborhood :string(255)
#  ward         :integer
#  precinct     :integer
#  created_at   :datetime
#  updated_at   :datetime
#

