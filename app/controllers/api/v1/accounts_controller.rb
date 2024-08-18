# frozen_string_literal: true

class Api::V1::AccountsController < Api::V1::ApplicationController
  def create
    result = Accounts::Create.new.call(account_create_params)
    return render json: AccountPresenter.new(result.data).as_json, status: :created if result.success?

    render json: ErrorsPresenter.new(result.errors).as_json, status: :bad_request
  end

  private

  def account_create_params
    params.permit(
      :name
    )
  end
end
