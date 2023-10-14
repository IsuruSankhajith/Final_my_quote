require "test_helper"

class QuotecategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quotecategory = quotecategories(:one)
  end

  test "should get index" do
    get quotecategories_url
    assert_response :success
  end

  test "should get new" do
    get new_quotecategory_url
    assert_response :success
  end

  test "should create quotecategory" do
    assert_difference("Quotecategory.count") do
      post quotecategories_url, params: { quotecategory: {  } }
    end

    assert_redirected_to quotecategory_url(Quotecategory.last)
  end

  test "should show quotecategory" do
    get quotecategory_url(@quotecategory)
    assert_response :success
  end

  test "should get edit" do
    get edit_quotecategory_url(@quotecategory)
    assert_response :success
  end

  test "should update quotecategory" do
    patch quotecategory_url(@quotecategory), params: { quotecategory: {  } }
    assert_redirected_to quotecategory_url(@quotecategory)
  end

  test "should destroy quotecategory" do
    assert_difference("Quotecategory.count", -1) do
      delete quotecategory_url(@quotecategory)
    end

    assert_redirected_to quotecategories_url
  end
end
