require 'rails_helper'

RSpec.describe 'when i visit the show page of a specific bending machine'do
  it 'can render the items in thet vending machine'do
    sam = Owner.create(name: "Sam's Snacks")
    mach = sam.machines.create(location: "Don's Mixed Drinks")

    item = mach.contents.create(content: "CocaCola", price: 1)
    item_1 = mach.contents.create(content: "CocaNola", price: 3)
    item_2 = mach.contents.create(content: "CocaPola", price: 600)


    visit "machines/#{mach.id}"

    expect(page).to have_content("CocaCola")
    expect(page).to have_content("1")
    expect(page).to have_content("CocaNola")
    expect(page).to have_content("3")
    expect(page).to have_content("CocaPola")
    expect(page).to have_content("600")
    expect(page).to have_content("201")


  end
end
