require "rails_helper"

RSpec.describe ItemService, vcr: true do
  it "has a .all_items method" do
    items = ItemService.new.all_items

    expect(items).to be_a(Array)
    expect(items.first[:attributes][:name]).to be_a String
  end

  it "has a .item_by_id(item_id) method" do
    item = ItemService.new.item_by_id(4)

    expect(item[:attributes][:name]).to be_a String
  end
end
