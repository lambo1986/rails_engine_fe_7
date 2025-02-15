require "rails_helper"

RSpec.describe ItemFacade, vcr: true do
  describe "stuff it does" do
    it "makes item facade stuffs via .items" do
      items_facade = ItemFacade.new

      expect(items_facade).to be_a ItemFacade
      expect(items_facade).to respond_to(:items)
      expect(items_facade.items).to be_an Array
      expect(items_facade.items.first).to be_an Item
    end

    it "has a .item method" do
      items_facade = ItemFacade.new

      expect(items_facade.item(179)).to be_an Item
      expect(items_facade.item(179).name).to be_a String
      expect(items_facade.item(179).unit_price).to be_a Float
    end

    it "has a . find_all_by_min_price method" do
      items = ItemFacade.new.find_all_by_min_price(999)

      expect(items).to be_an Array
      expect(items.first).to be_an Item
    end
  end
end
