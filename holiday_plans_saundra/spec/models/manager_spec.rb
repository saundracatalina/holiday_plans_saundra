require 'rails_helper'

describe Manager do
  describe 'validations' do
    it { should validate_presence_of :name }
  end
  describe 'relationships' do
    it { should have_many :employees }
  end
end
