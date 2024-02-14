require "rails_helper"

RSpec.describe "merchant index", type: :feature do
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

end
