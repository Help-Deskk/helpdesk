require 'rails_helper'

RSpec.describe User, type: :model do
  # before do
  #   User.destroy_all
  # end

  context "validations" do
    pending "validates user has an unique email"
    pending "validates user can be admin"
    pending "validates user can be technician"
    pending "validates user can be customer"
  end

  context "associations" do
    pending "validates user customer has many tickets"
    pending "validates user technician has many tickets"
    pending "validates user admin don't have tickets"
  end

  it "creates user" do
    user = User.create!(email: "test@test.com", password: "qwe123", role: :admin)
    expect(user).not_to be_nil
  end
end
