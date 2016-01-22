require 'rails_helper'

feature "edit and delete a wine" do
  before(:each) do
    @wine = FactoryGirl.create(:wine)
    @wine.name = "Smokey"
    @wine.save
    visit root_url
  end

    scenario "delete wine" do
      page.all('a')[1].click
      expect(page).to have_content "Smokey"
      click_on "Edit"
      click_button 'Delete'
      expect(page).to have_content("Index")
      expect(page).to_not have_content("Smokey")
    end

    scenario "edit wine" do
      page.all('a')[1].click
      click_on "Edit"
      fill_in 'wine[name]', :with => "crispy"
      click_button 'Update!'
      expect(page).to have_content("crispy")
    end

  end

  feature "search" do
    before(:each) do
      visit wines_search_url
    end
    scenario "find wine with search query" do
      fill_in 'wine[name]', :with => "hello"
      click_button "Search!"
      expect(page).to have_content("Hello Kitty")
    end

  end
