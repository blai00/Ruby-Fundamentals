class Post < ApplicationRecord
  belongs_to :blog
  belongs_to :user
  has_many :messages
  has_many :comments

  validates :title, :content, presence:true
  
end
