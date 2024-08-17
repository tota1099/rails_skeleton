class Account < ApplicationRecord
  has_many :account_user

  validates :name, presence: true, length: { maximum: 255 }
end
