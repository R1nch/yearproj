require "test_helper"

class YpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @yp = yps(:one)
  end

  test "should get index" do
    get yps_url
    assert_response :success
  end

  test "should get new" do
    get new_yp_url
    assert_response :success
  end

  test "should create yp" do
    assert_difference('Yp.count') do
      post yps_url, params: { yp: { email: @yp.email, first_name: @yp.first_name, last_name: @yp.last_name, phone: @yp.phone, socnet: @yp.socnet } }
    end

    assert_redirected_to yp_url(Yp.last)
  end

  test "should show yp" do
    get yp_url(@yp)
    assert_response :success
  end

  test "should get edit" do
    get edit_yp_url(@yp)
    assert_response :success
  end

  test "should update yp" do
    patch yp_url(@yp), params: { yp: { email: @yp.email, first_name: @yp.first_name, last_name: @yp.last_name, phone: @yp.phone, socnet: @yp.socnet } }
    assert_redirected_to yp_url(@yp)
  end

  test "should destroy yp" do
    assert_difference('Yp.count', -1) do
      delete yp_url(@yp)
    end

    assert_redirected_to yps_url
  end
end
