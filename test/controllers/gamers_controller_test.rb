require 'test_helper'

class GamersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gamers_index_url
    assert_response :success
  end

  test "should get edit" do
    get gamers_edit_url
    assert_response :success
  end

  test "should get update" do
    get gamers_update_url
    assert_response :success
  end

  test "should get new" do
    get gamers_new_url
    assert_response :success
  end

  test "should get create" do
    get gamers_create_url
    assert_response :success
  end

end
