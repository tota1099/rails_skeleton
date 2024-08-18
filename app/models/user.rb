class User < ApplicationRecord
  has_many :account_user
  has_many :accounts, through: :account_user

  VALID_EMAIL_REGEX = /\A([\w.%+\-]+)@([a-zA-Z0-9\-]+\.)+(\w{2,})\z/i

  validates :name, presence: true, length: { maximum: 255 }
  validates :email,
    presence: true,
    uniqueness: true,
    length: { maximum: 255 },
    format: VALID_EMAIL_REGEX
  validates :password, presence: true, length: { maximum: 72 }
  validates :reset_password_token, length: { maximum: 72 }

  before_save :encrypt_password if :password_changed?

  def encrypt_password
    self.password = Encrypter.new.encrypt_password(password)
  end
end
