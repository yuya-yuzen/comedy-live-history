require "application_system_test_case"

class LivesTest < ApplicationSystemTestCase
  setup do
    @life = lives(:one)
  end

  test "visiting the index" do
    visit lives_url
    assert_selector "h1", text: "Lives"
  end

  test "should create live" do
    visit lives_url
    click_on "New live"

    fill_in "Date", with: @life.date
    fill_in "Name", with: @life.name
    click_on "Create Live"

    assert_text "Live was successfully created"
    click_on "Back"
  end

  test "should update Live" do
    visit life_url(@life)
    click_on "Edit this live", match: :first

    fill_in "Date", with: @life.date
    fill_in "Name", with: @life.name
    click_on "Update Live"

    assert_text "Live was successfully updated"
    click_on "Back"
  end

  test "should destroy Live" do
    visit life_url(@life)
    click_on "Destroy this live", match: :first

    assert_text "Live was successfully destroyed"
  end
end
