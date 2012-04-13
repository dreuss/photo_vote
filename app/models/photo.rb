class Photo < ActiveRecord::Base
  attr_accessible :photos, :date_posted, :rank, :title, :url, :user_id

  validates :url, presence: true
  validates :title, presence: true

end
