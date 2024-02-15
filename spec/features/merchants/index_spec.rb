require "rails_helper"

RSpec.describe "merchant index", vcr: true, type: :feature do
  it "is the root path" do
    visit root_path

    expect(page).to have_content("Merchants")
  end

  it "lists all merchants" do
    visit merchants_path

    expect(page).to have_content("Merchants")
    expect(page).to have_content("Schroeder-Jerde")
  end

  it "lists each merchant as a link to their show" do
    visit merchants_path

    expect(page).to have_content("Merchants")
    expect(page).to have_link("Schroeder-Jerde")

    click_link "Schroeder-Jerde"

    expect(current_path).to eq("/merchants/1")
    expect(page).to have_content("Schroeder-Jerde")
    expect(page).to have_content("Items for Schroeder-Jerde:")
    expect(page).to have_content("Item Nemo Facere")
  end

  it "has a search box that can find a merchant by name, even if incomplete" do
    visit root_path

    expect(page).to have_content("Merchants")
    expect(page).to have_content("Schroeder-Jerde")
    expect(page).to have_content("Search For a Merchant By Name:")
    expect(page).to have_field("search")
    expect(page).to have_button("Search")

    fill_in "search", with: "Schroeder-Jerde"
    click_button "Search"

    expect(current_path).to eq("/merchants/find")
    expect(page).to have_content("Matches for Schroeder-Jerde:")
    expect(page).to have_link("Schroeder-Jerde")
    expect(page).to have_link("All Merchants")

    click_link "All Merchants"

    expect(current_path).to eq(merchants_path)

    fill_in "search", with: "Schro"
    click_button "Search"
save_and_open_page
    expect(current_path).to eq("/merchants/find")
    expect(page).to have_content("Matches for Schro")
    expect(page).to have_link("Schroeder-Jerde")
    expect(page).to have_link("All Merchants")
  end
end
