require 'rails_helper'

RSpec.describe Hospital, type: :model do
  describe 'hosital' do
    subject(:hospital) { create(:hospital) }
    subject(:hospital1) { create(:hospital) }
    it 'should have name' do
      expect(hospital).to be_valid
    end

    it 'should have name' do
      hospital.name = ''
      expect(hospital.save).to eq(false)
    end

    it 'should have name length between 5-50' do
      hospital.name = '1234567'
      expect(hospital.save).to eq(true)
    end

    it 'should have unique name' do
      hospital.name = hospital1.name
      expect(hospital.save).to eq(false)
    end
  end
end
