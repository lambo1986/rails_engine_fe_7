require "rails_helper"

RSpec.describe MerchantService do# 1
  describe ".all_merchants" do
    it "returns all merchants" do#1
      merchants = MerchantService.new.all_merchants

      expect(merchants).to be_an Array
      expect(merchants.first[:attributes][:name]).to be_a String
    end
  end

  describe ".merchant_items(merchant_id)" do
    it "returns all of a merchant's items" do
      items = MerchantService.new.merchant_items(99)

      expect(items).to be_an Array
      expect(items.first[:attributes][:name]).to be_a String
      expect(items.first[:attributes][:description]).to be_a String
      expect(items.first[:attributes][:description]).to be_a String
      expect(items.first[:attributes][:unit_price]).to be_a Float
      expect(items.first[:attributes][:merchant_id]).to be_an Integer
    end
  end
end
