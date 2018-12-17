require "test_helper"

class ListCreationTest < ActionDispatch::IntegrationTest
  test "can create list" do
    get "/lists/new"
    assert_response :success

    post "/lists",
      params: { list: { title: @list.title } }
    assert_response :redirect
    follow_redirect!
    assert_response :success
  end
end
