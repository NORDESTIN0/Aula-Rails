require 'test_helper'

class PcTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pc_type = pc_types(:one)
  end

  test "should get index" do
    get pc_types_url
    assert_response :success
  end

  test "should get new" do
    get new_pc_type_url
    assert_response :success
  end

  test "should create pc_type" do
    assert_difference('PcType.count') do
      post pc_types_url, params: { pc_type: { : @pc_type., acronym: @pc_type.acronym, name: @pc_type.name } }
    end

    assert_redirected_to pc_type_url(PcType.last)
  end

  test "should show pc_type" do
    get pc_type_url(@pc_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_pc_type_url(@pc_type)
    assert_response :success
  end

  test "should update pc_type" do
    patch pc_type_url(@pc_type), params: { pc_type: { : @pc_type., acronym: @pc_type.acronym, name: @pc_type.name } }
    assert_redirected_to pc_type_url(@pc_type)
  end

  test "should destroy pc_type" do
    assert_difference('PcType.count', -1) do
      delete pc_type_url(@pc_type)
    end

    assert_redirected_to pc_types_url
  end
end
