require 'rails_helper'

RSpec.describe "home page" do
  context "as a visitor" do
    it "sees a link to register" do
      visit root_path

      click_link "Register"

      expect(current_path).to eq(new_user_path)
    end
  end
end
