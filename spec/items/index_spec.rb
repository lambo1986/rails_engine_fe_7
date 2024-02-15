require "rails_helper"

RSpec.describe "items index", vcr: true, type: :feature do
  it "renders a list of items by name and each name is a link to their show" do
    visit items_path

    expect(page).to have_content("Items")
    expect(page).to have_link("Item Nemo Facere")
  end
end
