require 'rails_helper'

RSpec.feature "Landing Page", type: :feature do
  scenario "Sign up the lead successfully with a valid email" do
    visit "/"

    expect(page).to have_title "PopContent"
  end

  #https://thoughtbot.com/upcase/test-driven-rails-resources/rspec_acceptance.pdf
  scenario "notifies the user if his email is invalid" do
    #visit "/"

    #expect(page).to have_title "PopContent"
  end
end
