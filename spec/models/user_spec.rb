require 'rails_helper'

RSpec.describe User, type: :model do
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
end
