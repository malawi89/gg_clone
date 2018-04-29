require "application_system_test_case"

class PagesTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit pages_url
  #
  #   assert_selector "h1", text: "Page"
  # end

  test "visiting the home page" do
    visit "/"
    assert_selector "h1", text: "Welcome"
  end


end
