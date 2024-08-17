require 'rails_helper'

RSpec.describe Accounts::Create do
  describe '#call' do
    subject(:response) { described_class.new.call(name:) }

    let(:name) { 'Account Example Name' }

    it 'returns a successful result with the created account' do
      expect(response).to be_success
      expect(response.errors).to be_empty
      expect(response.data).to be_an_instance_of(Account)
      expect(response.data).to be_persisted
    end

    it 'creates an account with correct name' do
      account = response.data
      expect(account.name).to eq(name)
    end

    context 'when the account creation fails' do
      let(:name) { nil }

      it 'returns a failure result with the errors' do
        expect(response).to be_failure
        expect(response.errors).not_to be_empty
        expect(response.data).to be_nil
      end
    end
  end
end
