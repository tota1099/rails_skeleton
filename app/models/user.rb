class User < ApplicationRecord
  before_save :downcase_email

  validates :email, format: {with: URI::MailTo::EMAIL_REGEXP}, presence: true, uniqueness: true
  validates :passowrd, presence: true, length: {:within => 6..40}, on: :create

  private

  def downcase_email
    self.email = email.downcase
  end
end
