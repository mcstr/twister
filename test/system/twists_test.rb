require "application_system_test_case"

class TwistsTest < ApplicationSystemTestCase
  setup do
    @twist = twists(:one)
  end

  test "visiting the index" do
    visit twists_url
    assert_selector "h1", text: "Twists"
  end

  test "creating a Twist" do
    visit twists_url
    click_on "New Twist"

    fill_in "Twist", with: @twist.twist
    click_on "Create Twist"

    assert_text "Twist was successfully created"
    click_on "Back"
  end

  test "updating a Twist" do
    visit twists_url
    click_on "Edit", match: :first

    fill_in "Twist", with: @twist.twist
    click_on "Update Twist"

    assert_text "Twist was successfully updated"
    click_on "Back"
  end

  test "destroying a Twist" do
    visit twists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Twist was successfully destroyed"
  end
end
