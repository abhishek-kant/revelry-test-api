class Article < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]

  belongs_to :owner

  validates :name, presence: true, uniqueness: true
  validates_presence_of :owner


  def owner_name
    owner.try(:name)
  end

end
