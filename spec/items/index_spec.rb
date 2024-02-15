require "rails_helper"

RSpec.describe "items index", vcr: true, type: :feature do
  it "renders a list of items by name and each name is a link to their show" do
    visit items_path

    expect(page).to have_content("Items")
    expect(page).to have_link("Item Nemo Facere")
  end

  it "has search by minimum price function" do
    visit items_path

    expect(page).to have_content("Items")
    expect(page).to have_content("Search by Minimum Price:")
    expect(page).to have_field("search")

    fill_in "search", with: "999"
    click_button "Search"

    expect(current_path).to eq(find_all_items_path)
    expect(page).to have_content("Matches for 999:")
    expect(page).to have_content("Item Et Dolorem")
    expect(page).to have_content("Item Eos Similique")
    expect(page).to have_content("Item Quaerat Expedita")
    expect(page).to have_link("All Items")

    click_link "All Items"

    expect(page).to have_content("Items")
    expect(page).to have_content("Search by Minimum Price:")
  end
end
