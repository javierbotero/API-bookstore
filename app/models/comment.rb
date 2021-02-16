class Comment < ApplicationRecord
  belongs_to :book

  validates :body, presence: true
  validates :body, length: { in: 2..500 }
end
