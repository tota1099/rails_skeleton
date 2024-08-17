require 'rails_helper'

RSpec.describe User do
  subject(:user) { build(:user) }

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
  end

  describe 'fields' do
    it { is_expected.to have_db_column(:name).of_type(:string).with_options(null: false, limit: 255) }
  end
end
