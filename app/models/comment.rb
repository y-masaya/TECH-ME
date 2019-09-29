class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :article, optional: true
  belongs_to :question, optional: true
end
