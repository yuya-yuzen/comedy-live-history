require "test_helper"

class ComediansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comedian = comedians(:one)
  end

  test "should get index" do
    get comedians_url
    assert_response :success
  end

  test "should get new" do
    get new_comedian_url
    assert_response :success
  end

  test "should create comedian" do
    assert_difference("Comedian.count") do
      post comedians_url, params: { comedian: { name: @comedian.name } }
    end

    assert_redirected_to comedian_url(Comedian.last)
  end

  test "should show comedian" do
    get comedian_url(@comedian)
    assert_response :success
  end

  test "should get edit" do
    get edit_comedian_url(@comedian)
    assert_response :success
  end

  test "should update comedian" do
    patch comedian_url(@comedian), params: { comedian: { name: @comedian.name } }
    assert_redirected_to comedian_url(@comedian)
  end

  test "should destroy comedian" do
    assert_difference("Comedian.count", -1) do
      delete comedian_url(@comedian)
    end

    assert_redirected_to comedians_url
  end
end
