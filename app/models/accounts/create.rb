class Accounts::Create
  def call(name:)
    account = Account.new(name:)
    return Success.new(account) if account.save

    Failure.new(account.errors)
  end
end
