class Article < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]

  belongs_to :owner


  def owner_name
    owner.try(:name)
  end

end
