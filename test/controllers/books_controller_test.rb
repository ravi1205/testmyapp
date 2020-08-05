require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get books_home_url
    assert_response :success
  end

  test "should get info" do
    get books_info_url
    assert_response :success
  end

  test "should get catering" do
    get books_catering_url
    assert_response :success
  end

end
