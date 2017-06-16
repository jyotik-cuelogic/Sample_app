require 'spec_helper'

describe "Static Pages" do
	describe "Home Page" do
   
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      #page.should have_content('Sample App')
      page.should have_selector('title', :text=> 'Ruby on Rails Tutorial Sample App | Home')
    end
  end

  describe "Help Page" do
  it "should have the content 'Help'" do
  visit '/static_pages/help'
  #page.should have_content('Help')
  page.should have_selector('title', :text=> 'Ruby on Rails Tutorial Sample App | Help')
  end

  describe "About Page" do
  it "should have the content 'About'" do
   visit '/static_pages/about'
   #page.should have_content('About Us')
   page.should have_selector('title', :text=> 'Ruby on Rails Tutorial Sample App | About')
  end
  end
  
  end
end
