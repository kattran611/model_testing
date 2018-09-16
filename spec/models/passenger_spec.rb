require 'rails_helper'

RSpec.describe Passenger, type: :model do
  describe 'associations' do
    @pass = FactoryBot.create(:passenger)
  end
end
