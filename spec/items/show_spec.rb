require "rails_helper"

RSpec.describe "item show page", vcr: true, type: :feature do
  it "shows an items attributes" do
    visit items_path

    click_link("Item Nemo Facere")

    expect(current_path).to eq("/items/4")
    expect(page).to have_content("Item")
    expect(page).to have_content("Name: Item Nemo Facere")
    expect(page).to have_content("Description: Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
    expect(page).to have_content("Unit Price: 42.91")
  end
end
