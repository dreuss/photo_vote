class Photo < ActiveRecord::Base
  attr_accessible :photos, :date_posted, :rank, :title, :url, :user_id
  validates :url, presence: true
  validates :title, presence: true
  before_save :default_values

  scope :rank_order, order('rank DESC')

  def default_values
    self.rank ||= 0
  end

  def up_vote
    self.update_attributes(:rank => self.rank += 1)
  end


end

