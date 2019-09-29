class Article < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :images
  belongs_to :category
end
