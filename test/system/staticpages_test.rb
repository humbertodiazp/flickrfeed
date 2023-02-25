require "application_system_test_case"

class StaticpagesTest < ApplicationSystemTestCase
  setup do
    @staticpage = staticpages(:one)
  end

  test "visiting the index" do
    visit staticpages_url
    assert_selector "h1", text: "Staticpages"
  end

  test "should create staticpage" do
    visit staticpages_url
    click_on "New staticpage"

    fill_in "Flickr", with: @staticpage.flickr_id
    click_on "Create Staticpage"

    assert_text "Staticpage was successfully created"
    click_on "Back"
  end

  test "should update Staticpage" do
    visit staticpage_url(@staticpage)
    click_on "Edit this staticpage", match: :first

    fill_in "Flickr", with: @staticpage.flickr_id
    click_on "Update Staticpage"

    assert_text "Staticpage was successfully updated"
    click_on "Back"
  end

  test "should destroy Staticpage" do
    visit staticpage_url(@staticpage)
    click_on "Destroy this staticpage", match: :first

    assert_text "Staticpage was successfully destroyed"
  end
end
