require 'test_helper'

class SpectsControllerTest < ActionController::TestCase
  setup do
    @spect = spects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spect" do
    assert_difference('Spect.count') do
      post :create, spect: { brand_id: @spect.brand_id, design: @spect.design, name: @spect.name }
    end

    assert_redirected_to spect_path(assigns(:spect))
  end

  test "should show spect" do
    get :show, id: @spect
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spect
    assert_response :success
  end

  test "should update spect" do
    patch :update, id: @spect, spect: { brand_id: @spect.brand_id, design: @spect.design, name: @spect.name }
    assert_redirected_to spect_path(assigns(:spect))
  end

  test "should destroy spect" do
    assert_difference('Spect.count', -1) do
      delete :destroy, id: @spect
    end

    assert_redirected_to spects_path
  end
end
