class Text < ApplicationRecord
  has_many :users
  has_many :reads, dependent: :destroy
  validates :genre, presence: true
  validates :title, presence: true
  validates :content, presence: true
  paginates_per 12
  def read_by?(user)
    reads.find_by(user_id: user.id).present?
  end
end
