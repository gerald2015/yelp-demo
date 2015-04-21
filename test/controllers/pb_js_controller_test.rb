require 'test_helper'

class PbJsControllerTest < ActionController::TestCase
  setup do
    @pb_j = pb_js(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pb_js)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pb_j" do
    assert_difference('PbJ.count') do
      post :create, pb_j: { address: @pb_j.address, name: @pb_j.name, phone: @pb_j.phone, price_from: @pb_j.price_from, price_until: @pb_j.price_until, schedule_id: @pb_j.schedule_id, website: @pb_j.website }
    end

    assert_redirected_to pb_j_path(assigns(:pb_j))
  end

  test "should show pb_j" do
    get :show, id: @pb_j
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pb_j
    assert_response :success
  end

  test "should update pb_j" do
    patch :update, id: @pb_j, pb_j: { address: @pb_j.address, name: @pb_j.name, phone: @pb_j.phone, price_from: @pb_j.price_from, price_until: @pb_j.price_until, schedule_id: @pb_j.schedule_id, website: @pb_j.website }
    assert_redirected_to pb_j_path(assigns(:pb_j))
  end

  test "should destroy pb_j" do
    assert_difference('PbJ.count', -1) do
      delete :destroy, id: @pb_j
    end

    assert_redirected_to pb_js_path
  end
end
