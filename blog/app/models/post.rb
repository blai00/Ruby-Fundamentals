class Post < ApplicationRecord
  belongs_to :tumblr
  validates :title, :content, presence: true
  validates :title, length: {minimum: 7}
end
