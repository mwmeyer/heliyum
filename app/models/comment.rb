class Comment < ApplicationRecord
  belongs_to :post

  validates :content, presence: true, length: { minimum: 3, maximum: 1000 }
  validates :username, presence: true, length: { minimum: 2, maximum: 50 }

  scope :recent, -> { order(created_at: :desc) }

  def author_name
    username
  end

  def created_date
    created_at.strftime("%B %d, %Y at %I:%M %p")
  end
end
