require "rails_helper"

RSpec.describe MerchantFacade, vcr: true do
  describe "what it do" do
    it "gives birth to baby merchant facades" do
      merchants_facade = MerchantFacade.new

      expect(merchants_facade).to be_a(MerchantFacade)
      expect(merchants_facade).to respond_to(:merchants)
      expect(merchants_facade.merchants).to be_an(Array)
      expect(merchants_facade.merchants.first).to be_a(Merchant)
    end

    it "gives birth to items of a merchant" do
      merchant_items = MerchantFacade.new.merchant_items(99)

      expect(merchant_items).to be_an(Array)
      expect(merchant_items.first).to be_a(Item)
      expect(merchant_items.count).to eq(42)
    end

    it "can find just one merchant" do
      merchant = MerchantFacade.new.merchant(43)

      expect(merchant).to be_a(Merchant)
      expect(merchant.id).to be_a(String)
      expect(merchant.name).to be_a(String)
    end
  end
end
