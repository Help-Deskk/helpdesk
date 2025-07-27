# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Technician::List, type: :actor do
  describe '.call' do
    it 'is successful' do
      result = described_class.result(scope: User.technician)
      expect(result).to be_success
    end

    it 'returns technicians order by created_at desc' do
      create(:admin)
      create(:customer)
      create(:technician, email: "tec2@test.com")
      create(:technician, email: "tec3@test.com")
      create(:technician, email: "tec1@test.com")

      result = described_class.result(scope: User.technician)
      expect(result.technicians.map(&:email)).to eq([
          "tec1@test.com",
          "tec3@test.com",
          "tec2@test.com"
      ])
    end
  end
end
