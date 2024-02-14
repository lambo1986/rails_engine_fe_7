require "rails_helper"

RSpec.describe MerchantFacade do
  describe "what it do" do
    it "exists and gives birth to baby merchant facades" do
      merchants_facade = MerchantFacade.new

      expect(merchants_facade).to be_a(MerchantFacade)
      expect(merchants_facade).to respond_to(:merchants)
      expect(merchants_facade.merchants).to be_an(Array)
      expect(merchants_facade.merchants.first).to be_a(Merchant)
    end
  end
end
