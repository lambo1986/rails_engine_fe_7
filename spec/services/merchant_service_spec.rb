require "rails_helper"# requires rails_engine app running console (https://github.com/lambo1986/rails_engine_be)

RSpec.describe MerchantService, vcr: true do# 1
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

  describe ".merchant_by_id(merchant_id)" do
    it "returns a single merchant" do
      merchant = MerchantService.new.merchant_by_id(99)

      expect(merchant[:attributes][:name]).to be_a String
      expect(merchant[:type]).to be_a String
    end
  end

  describe ".find_merchant_by_name(merchant_name)" do
    it "returns a single merchant by name from a search" do
      merchant = MerchantService.new.find_merchant_by_name("Schroeder-Jerde")

      expect(merchant[:attributes][:name]).to be_a String
      expect(merchant[:type]).to be_a String
    end
  end
end
