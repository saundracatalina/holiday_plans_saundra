require 'rails_helper'

describe Employee do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :vac_days_left }
  end
  describe 'relationships' do
    it { should belong_to :manager }
    it { should have_many :vacation_requests }
  end
end
