require "rails_helper"

RSpec.describe Merchant do
  it "exists" do
    attrs = {
      id: 1,
      type: "merchant",
      attributes: {
        name: "Bud"
    }
  }

    merchant = Merchant.new(attrs)

    expect(merchant).to be_a(Merchant)
    expect(merchant.name).to eq("Bud")
    expect(merchant.id).to eq(1)
    expect(merchant.type).to eq("merchant")
  end
end
