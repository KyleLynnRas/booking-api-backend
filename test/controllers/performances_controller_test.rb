require "test_helper"

class PerformancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @performance = performances(:one)
  end

  test "should get index" do
    get performances_url, as: :json
    assert_response :success
  end

  test "should create performance" do
    assert_difference('Performance.count') do
      post performances_url, params: { performance: { img: @performance.img, price: @performance.price, summary: @performance.summary, title: @performance.title } }, as: :json
    end

    assert_response 201
  end

  test "should show performance" do
    get performance_url(@performance), as: :json
    assert_response :success
  end

  test "should update performance" do
    patch performance_url(@performance), params: { performance: { img: @performance.img, price: @performance.price, summary: @performance.summary, title: @performance.title } }, as: :json
    assert_response 200
  end

  test "should destroy performance" do
    assert_difference('Performance.count', -1) do
      delete performance_url(@performance), as: :json
    end

    assert_response 204
  end
end
