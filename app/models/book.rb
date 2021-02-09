class Book < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user

  validates :title, :category, :completed, presence: true
  validates :title, length: { in: 1..100 }
end
