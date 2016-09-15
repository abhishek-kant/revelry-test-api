class Article < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]

  belongs_to :owner

  validates :name, :owner, presence: true


  def owner_name
    owner.try(:name)
  end

end
