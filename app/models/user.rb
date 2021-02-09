class User < ApplicationRecord
  has_many :books, dependent: :destroy

  validates :email, :password, presence: true
  validates :email, uniqueness: true
  validates :email, :password, length: { in: 3..100 }
end
