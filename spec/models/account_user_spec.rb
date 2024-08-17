require 'rails_helper'

RSpec.describe AccountUser do
  subject(:account_user) { build(:account_user) }

  describe 'fields' do
    it { is_expected.to have_db_column(:id).of_type(:integer) }
    it { is_expected.to have_db_column(:account_id).of_type(:integer).with_options(null: false) }
    it { is_expected.to have_db_column(:user_id).of_type(:integer).with_options(null: false) }
  end

  describe 'relationships' do
    it { is_expected.to belong_to(:account).required }
    it { is_expected.to belong_to(:user).required }
  end
end
