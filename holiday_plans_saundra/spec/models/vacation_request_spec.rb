require 'rails_helper'

describe VacationRequest do
  describe 'validations' do
    it { should validate_presence_of :status }
    it { should validate_presence_of :start_date }
    it { should validate_presence_of :end_date }
    # no validation for resolved by--it can be null if pending
  end
  describe 'relationships' do
    it { should belong_to :employee }
  end
end
