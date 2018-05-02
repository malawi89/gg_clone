require "application_system_test_case"

class PagesTest < ApplicationSystemTestCase

  # test "visiting the home page" do
  #   visit "/"
  #   assert_selector "h1", text: "Welcome"
  # end

  test "logged in on the home page" do
    p users(:dave)
    visit "/"
    login_as users(:dave)
    # save_and_open_screenshot
    assert_selector "a", text: "Wandsworth"
  end


end
