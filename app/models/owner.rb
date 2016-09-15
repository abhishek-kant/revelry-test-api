class Owner < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]

  has_many :articles

  validates :name, presence: true
end
