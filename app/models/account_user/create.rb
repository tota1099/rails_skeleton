class AccountUser::Create
  def call(create_params)
    account_user = AccountUser.new(create_params)
    return Success.new(account_user) if account_user.save

    Failure.new(account_user.errors)
  end
end
