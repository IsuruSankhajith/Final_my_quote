require "application_system_test_case"

class QuotesTest < ApplicationSystemTestCase
  setup do
    @quote = quotes(:one)
  end

  test "visiting the index" do
    visit quotes_url
    assert_selector "h1", text: "Quotes"
  end

  test "should create quote" do
    visit quotes_url
    click_on "New quote"

    fill_in "Description", with: @quote.description
    check "Ispublic" if @quote.ispublic
    fill_in "Publication year", with: @quote.publication_year
    fill_in "Text", with: @quote.text
    fill_in "Title", with: @quote.title
    fill_in "User comment", with: @quote.user_comment
    click_on "Create Quote"

    assert_text "Quote was successfully created"
    click_on "Back"
  end

  test "should update Quote" do
    visit quote_url(@quote)
    click_on "Edit this quote", match: :first

    fill_in "Description", with: @quote.description
    check "Ispublic" if @quote.ispublic
    fill_in "Publication year", with: @quote.publication_year
    fill_in "Text", with: @quote.text
    fill_in "Title", with: @quote.title
    fill_in "User comment", with: @quote.user_comment
    click_on "Update Quote"

    assert_text "Quote was successfully updated"
    click_on "Back"
  end

  test "should destroy Quote" do
    visit quote_url(@quote)
    click_on "Destroy this quote", match: :first

    assert_text "Quote was successfully destroyed"
  end
end
