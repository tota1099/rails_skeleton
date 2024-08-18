class Users::Create
  def call(create_params)
    user = User.new(create_params)
    return Success.new(user) if user.save

    Failure.new(user.errors)
  end
end
