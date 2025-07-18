require 'rails_helper'

RSpec.describe TechnicianPolicy, type: :policy do
  let(:user) { User.new }

  subject { described_class }

  permissions ".scope" do
    pending "includes all technicians records for users admin"
    pending "excludes technician records for users technician"
    pending "excludes technician records for users customer"
  end

  permissions :index? do
    pending "authorize users admin to get technicians records"
  end

  permissions :show? do
    pending "add some examples to (or delete) #{__FILE__}"
  end

  permissions :create? do
    pending "add some examples to (or delete) #{__FILE__}"
  end

  permissions :update? do
    pending "add some examples to (or delete) #{__FILE__}"
  end

  permissions :destroy? do
    pending "add some examples to (or delete) #{__FILE__}"
  end
end
