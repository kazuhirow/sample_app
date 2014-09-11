require 'spec_helper'
# gem "minitest"
# require 'minitest/autorun'

describe "Static pages" do
	let(:base_title) { "Ruby on Rails Tutorial Sample App" }
	describe "Home page" do

		it "should have the content 'Sample App'" do
			visit '/'
			expect(page).to have_content('Sample App')
		end
	

		it "should have the title 'Home'" do
			visit '/'
			expect(page).to have_title("#{base_title}")
		end

		it "should not have a custom pate title '" do
			visit '/'
			expect(page).not_to have_title("| Home")
		end

	end

	describe "Help page" do

		it "should have the content 'Help'" do
			visit '/help'
			expect(page).to have_content('Help')
		end

		it "should have the title 'Help'" do
			visit '/help'
			expect(page).to have_title("#{base_title} | Help")
		end

	end

	describe "About page" do

		it "should have the content 'About Us'" do
			visit '/about'
			expect(page).to have_content('About Us')
		end

		it "should have the title 'About Us'" do
			visit '/about'
			expect(page).to have_title("#{base_title} | About Us")
		end

	end

	describe "Contact" do

		it "should have the content 'Contact'" do
			visit '/contact'
			expect(page).to have_content('Contact')
		end

		it "should have the title 'Contact'" do
			visit '/contact'
			expect(page).to have_title("#{base_title} | Contact")
		end

	end

end



# describe "StaticPages" do
#   describe "GET /static_pages" do
#     it "works! (now write some real specs)" do
#       # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#       get static_pages_index_path
#       response.status.should be(200)
#     end
#   end
# end
