# frozen_string_literal: true

class AccountPresenter
  def initialize(account)
    @account = account
  end

  def as_json
    {
      name: @account.name,
    }
  end
end
