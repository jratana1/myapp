require "application_system_test_case"

class BoxesTest < ApplicationSystemTestCase
  setup do
    @box = boxes(:one)
  end

  test "visiting the index" do
    visit boxes_url
    assert_selector "h1", text: "Boxes"
  end

  test "should create box" do
    visit boxes_url
    click_on "New box"

    fill_in "Barcode", with: @box.barcode
    fill_in "Id", with: @box.id
    fill_in "Spec", with: @box.spec_id
    fill_in "Status", with: @box.status
    fill_in "Status change", with: @box.status_change
    click_on "Create Box"

    assert_text "Box was successfully created"
    click_on "Back"
  end

  test "should update Box" do
    visit box_url(@box)
    click_on "Edit this box", match: :first

    fill_in "Barcode", with: @box.barcode
    fill_in "Id", with: @box.id
    fill_in "Spec", with: @box.spec_id
    fill_in "Status", with: @box.status
    fill_in "Status change", with: @box.status_change
    click_on "Update Box"

    assert_text "Box was successfully updated"
    click_on "Back"
  end

  test "should destroy Box" do
    visit box_url(@box)
    click_on "Destroy this box", match: :first

    assert_text "Box was successfully destroyed"
  end
end
