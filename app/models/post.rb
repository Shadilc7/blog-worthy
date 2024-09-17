class Post < ApplicationRecord
  MAX_TITLE_LENGTH = 12
  validates :title, presence: true, length: {maximum: MAX_TITLE_LENGTH}
  validates_inclusion_of :is_blog_worthy, in: [true, false]
  validate :is_negative?

  def is_negative?
    errors.add(:base, "Difference between upvote and downvote can't be negative") if upvote - downvote < 0
  end
end
