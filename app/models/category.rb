# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Category < ApplicationRecord
	has_many :clasifications, dependent: :destroy
  	has_many :activities, through: :clasifications

  scope :by_description, -> { order(:description) }

end
