require 'rails_helper'

RSpec.describe "user new page" do
  context "as a visitor" do
    it "can register" do
      visit new_user_path
    
      fill_in "Name", with: "Trevor"
      fill_in "Email", with: "trevor.com"
      fill_in "Password", with: "password"

      click_button  "Create User"

      user = User.last

      expect(current_path).to eq(user_path(user))
    end
  end
end
