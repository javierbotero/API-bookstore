class Book < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user

  validates :title, :category, :completed, :author, :completed, presence: true
  validates :title, :author, length: { in: 1..100 }
  validates :completed, inclusion: { in: 0..100, message: "%{value} is not a valid percentage size for your reading completion" }
end
