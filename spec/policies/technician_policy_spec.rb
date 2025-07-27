require 'rails_helper'

RSpec.describe TechnicianPolicy, type: :policy do
  subject { described_class }

  let!(:technician1) { create(:technician) }
  let!(:technician2) { create(:technician) }

  describe ".scope" do
    context "when user is admin" do
      let(:admin) { create(:admin) }

      it "includes all technicians" do
        scope = TechnicianPolicy::Scope.new(admin, User).resolve
        expect(scope).to include(technician1, technician2)
      end
    end

    context "when user is technician" do
      let(:technician) { create(:technician) }

      it "returns empty scope" do
        scope = TechnicianPolicy::Scope.new(technician, User).resolve
        expect(scope).to be_empty
      end
    end

    context "when user is customer" do
      let(:customer) { User.create!(email: "customer@example.com", password: "password", role: :customer) }

      it "returns empty scope" do
        scope = TechnicianPolicy::Scope.new(customer, User).resolve
        expect(scope).to be_empty
      end
    end
  end

  describe "#index?" do
    context "when user is admin" do
      let(:admin) { create(:admin) }

      it "permits access" do
        policy = TechnicianPolicy.new(admin, :technician)
        expect(policy.index?).to be true
      end
    end

    context "when user is technician" do
      let(:technician) { create(:technician) }

      it "denies access" do
        policy = TechnicianPolicy.new(technician, :technician)
        expect(policy.index?).to be false
      end
    end

    context "when user is customer" do
      let(:customer) { User.create!(email: "customer@example.com", password: "password", role: :customer) }

      it "denies access" do
        policy = TechnicianPolicy.new(customer, :technician)
        expect(policy.index?).to be false
      end
    end
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
