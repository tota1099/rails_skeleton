class Accounts::Create
  def call(create_params)
    account = Account.new(create_params)
    return Success.new(account) if account.save

    Failure.new(account.errors)
  end
end
