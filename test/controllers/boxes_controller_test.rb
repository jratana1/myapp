require "test_helper"

class BoxesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @box = boxes(:one)
  end

  test "should get index" do
    get boxes_url
    assert_response :success
  end

  test "should get new" do
    get new_box_url
    assert_response :success
  end

  test "should create box" do
    assert_difference("Box.count") do
      post boxes_url, params: { box: { barcode: @box.barcode, id: @box.id, spec_id: @box.spec_id, status: @box.status, status_change: @box.status_change } }
    end

    assert_redirected_to box_url(Box.last)
  end

  test "should show box" do
    get box_url(@box)
    assert_response :success
  end

  test "should get edit" do
    get edit_box_url(@box)
    assert_response :success
  end

  test "should update box" do
    patch box_url(@box), params: { box: { barcode: @box.barcode, id: @box.id, spec_id: @box.spec_id, status: @box.status, status_change: @box.status_change } }
    assert_redirected_to box_url(@box)
  end

  test "should destroy box" do
    assert_difference("Box.count", -1) do
      delete box_url(@box)
    end

    assert_redirected_to boxes_url
  end
end
