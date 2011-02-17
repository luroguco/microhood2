class Microhood < ActiveRecord::Base
end

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

