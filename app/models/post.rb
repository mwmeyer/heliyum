class Post < ApplicationRecord
  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: { minimum: 3, maximum: 255 }
  validates :content, presence: true, length: { minimum: 10 }
  validates :author, presence: true, length: { minimum: 2 }

  scope :recent, -> { order(created_at: :desc) }
  scope :by_author, ->(author) { where(author: author) }

  before_save :generate_slug

  # Simple search across title and content
  def self.search(query)
    where("title LIKE ? OR content LIKE ?", "%#{query}%", "%#{query}%")
  end

  def to_param
    slug
  end

  def comments_count
    comments.count
  end

  private

  def generate_slug
    self.slug = title.parameterize if title.present?
  end
end
