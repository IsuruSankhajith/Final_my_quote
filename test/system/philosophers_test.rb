require "application_system_test_case"

class PhilosophersTest < ApplicationSystemTestCase
  setup do
    @philosopher = philosophers(:one)
  end

  test "visiting the index" do
    visit philosophers_url
    assert_selector "h1", text: "Philosophers"
  end

  test "should create philosopher" do
    visit philosophers_url
    click_on "New philosopher"

    fill_in "Birth year", with: @philosopher.birth_year
    fill_in "Death year", with: @philosopher.death_year
    fill_in "First name", with: @philosopher.first_name
    fill_in "Last name", with: @philosopher.last_name
    fill_in "Short biography", with: @philosopher.short_biography
    click_on "Create Philosopher"

    assert_text "Philosopher was successfully created"
    click_on "Back"
  end

  test "should update Philosopher" do
    visit philosopher_url(@philosopher)
    click_on "Edit this philosopher", match: :first

    fill_in "Birth year", with: @philosopher.birth_year
    fill_in "Death year", with: @philosopher.death_year
    fill_in "First name", with: @philosopher.first_name
    fill_in "Last name", with: @philosopher.last_name
    fill_in "Short biography", with: @philosopher.short_biography
    click_on "Update Philosopher"

    assert_text "Philosopher was successfully updated"
    click_on "Back"
  end

  test "should destroy Philosopher" do
    visit philosopher_url(@philosopher)
    click_on "Destroy this philosopher", match: :first

    assert_text "Philosopher was successfully destroyed"
  end
end
