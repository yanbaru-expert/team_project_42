class Movie < ApplicationRecord
  has_many :users
  has_many :watches, dependent: :destroy
  validates :genre, presence: true
  validates :title, presence: true
  validates :url, presence: true
  paginates_per  18
  def watched_by?(user)
    watches.find_by(user_id: user.id).present?
  end
end
