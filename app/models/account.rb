class Account < ApplicationRecord
  has_many :account_user
  has_many :users, through: :account_user

  validates :name, presence: true, length: { maximum: 255 }
end
