require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    it "validates uniqueness of email" do
      create(:admin, email: "unique@example.com")
      user = build(:admin, email: "unique@example.com")
      expect(user).not_to be_valid
      expect(user.errors[:email]).to include("has already been taken")
    end

    it "allows creating a user with admin role" do
      user = build(:admin)
      expect(user).to be_valid
    end

    it "allows creating a user with technician role" do
      user = build(:technician)
      expect(user).to be_valid
    end

    it "allows creating a user with customer role" do
      user = build(:customer)
      expect(user).to be_valid
    end
  end

  describe "creation" do
    it "successfully creates an admin user" do
      user = create(:admin, email: "test@test.com", password: "qwe123")
      expect(user).to be_persisted
    end
  end
end
