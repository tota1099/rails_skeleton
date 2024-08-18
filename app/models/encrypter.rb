class Encrypter
  include BCrypt

  def encrypt_password(password)
    Password.create(password)
  end
end
