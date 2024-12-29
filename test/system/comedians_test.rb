require "application_system_test_case"

class ComediansTest < ApplicationSystemTestCase
  setup do
    @comedian = comedians(:one)
  end

  test "visiting the index" do
    visit comedians_url
    assert_selector "h1", text: "Comedians"
  end

  test "should create comedian" do
    visit comedians_url
    click_on "New comedian"

    fill_in "Name", with: @comedian.name
    click_on "Create Comedian"

    assert_text "Comedian was successfully created"
    click_on "Back"
  end

  test "should update Comedian" do
    visit comedian_url(@comedian)
    click_on "Edit this comedian", match: :first

    fill_in "Name", with: @comedian.name
    click_on "Update Comedian"

    assert_text "Comedian was successfully updated"
    click_on "Back"
  end

  test "should destroy Comedian" do
    visit comedian_url(@comedian)
    click_on "Destroy this comedian", match: :first

    assert_text "Comedian was successfully destroyed"
  end
end
