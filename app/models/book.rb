class Book < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user

  validates :title, :category, :completed, :author, :completed, presence: true
  validates :title, :author, length: { in: 1..100 }
end
