require 'rails_helper'

RSpec.describe Account do
  subject(:account) { build(:account) }

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
  end

  describe 'fields' do
    it { is_expected.to have_db_column(:name).of_type(:string).with_options(null: false, limit: 255) }
  end
end
