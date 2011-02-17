class Idea < ActiveRecord::Base
  
end


# == Schema Information
#
# Table name: ideas
#
#  id              :integer         not null, primary key
#  description     :text
#  rating          :integer
#  neighborhood_id :string(255)
#  created_by_id   :integer
#  created_at      :datetime
#  updated_at      :datetime
#

