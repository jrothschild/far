require 'rails_helper'

describe "users", :type => :feature do

  it "verify Faculty Text" do

    user = User.create!(:first_name => "Darren QX Bean", :email => "darren@email.com", :password => "password")

    visit user_edit_path(user.id)
    
    expect(page).to have_content("Faculty")
  end
end