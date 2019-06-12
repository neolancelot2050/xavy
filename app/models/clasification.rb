# == Schema Information
#
# Table name: clasifications
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  activity_id :integer
#  category_id :integer
#

class Clasification < ApplicationRecord
  belongs_to :category
  belongs_to :activity
end
