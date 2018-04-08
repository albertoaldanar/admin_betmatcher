require 'test_helper'

class MaterialControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get material_index_url
    assert_response :success
  end

  test "should get new" do
    get material_new_url
    assert_response :success
  end

  test "should get create" do
    get material_create_url
    assert_response :success
  end

  test "should get show" do
    get material_show_url
    assert_response :success
  end

end
