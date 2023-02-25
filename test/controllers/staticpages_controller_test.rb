require "test_helper"

class StaticpagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @staticpage = staticpages(:one)
  end

  test "should get index" do
    get staticpages_url
    assert_response :success
  end

  test "should get new" do
    get new_staticpage_url
    assert_response :success
  end

  test "should create staticpage" do
    assert_difference("Staticpage.count") do
      post staticpages_url, params: { staticpage: { flickr_id: @staticpage.flickr_id } }
    end

    assert_redirected_to staticpage_url(Staticpage.last)
  end

  test "should show staticpage" do
    get staticpage_url(@staticpage)
    assert_response :success
  end

  test "should get edit" do
    get edit_staticpage_url(@staticpage)
    assert_response :success
  end

  test "should update staticpage" do
    patch staticpage_url(@staticpage), params: { staticpage: { flickr_id: @staticpage.flickr_id } }
    assert_redirected_to staticpage_url(@staticpage)
  end

  test "should destroy staticpage" do
    assert_difference("Staticpage.count", -1) do
      delete staticpage_url(@staticpage)
    end

    assert_redirected_to staticpages_url
  end
end
