require "rails_helper"

RSpec.describe MerchantService do# 1
  describe ".all_merchants" do
    it "returns all merchants" do#1
      merchants = MerchantService.new.all_merchants

      expect(merchants).to be_an Array

      expect(merchants.first[:attributes][:name]).to be_a String
    end
  end
end
