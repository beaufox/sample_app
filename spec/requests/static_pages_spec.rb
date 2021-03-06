require 'spec_helper'

describe "Static pages" do

#  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  subject { page }

  describe "Home page" do
    before { visit root_path }
#    it "works! (now write some real specs)" do
#    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      get static_pages_index_path
#      response.status.should be(200)
#      visit root_path
#      expect(page).to have_content('Sample App')

    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

#    it "should have the title 'Home'" do
#      visit root_path
#      expect(page).to have_title("#{base_title}")
#    end

#    it "should not have a custom page title" do
#      visit root_path
#      expect(page).not_to have_title('| Home')
#    end
#  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end

#    it "should have the content 'Help'" do
#      visit help_path
#      expect(page).to have_content('Help')
#    end

#    it "should have the title 'Help'" do
#      visit help_path
#      expect(page).to have_title("#{base_title} | Help")
#    end
#  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title(full_title('About Us')) }
  end

#    it "should have the content 'About Us'" do
#      visit about_path
#      expect(page).to have_content('About Us')
#    end

#    it "should have the title 'About Us'" do
#      visit about_path
#      expect(page).to have_title("#{base_title} | About Us")
#    end
#  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end

#    it "should have the content 'Contact'" do
#      visit contact_path
#      expect(page).to have_content('Contact')
#    end

#    it "shoud have the title 'Contact'" do
#      visit contact_path
#      expect(page).to have_title("#{base_title} | Contact")
#    end
#  end

end
