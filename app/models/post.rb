class Post < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :content, presence: true
  belongs_to :user
  belongs_to :category
  has_many :comments
end
