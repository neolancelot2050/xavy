# == Schema Information
#
# Table name: activities
#
#  id              :integer          not null, primary key
#  description     :text
#  difficultylevel :string
#  name            :string
#  schedule        :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  venue_id        :integer
#
# Indexes
#
#  index_activities_on_venue_id  (venue_id)
#

class Activity < ApplicationRecord
  belongs_to :venue

  scope :by_name, -> { order(:name) }

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :schedule, presence: true

  has_many :clasifications, dependent: :destroy
  has_many :categories, through: :clasifications

end
