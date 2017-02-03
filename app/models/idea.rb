class Idea < ActiveRecord::Base
  belongs_to :user
  has_many :likes
  has_many :users, :through => :likes
  def total_likes
    self.likes.sum(:count)
  end
end
