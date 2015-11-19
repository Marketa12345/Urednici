require 'test_helper'

class UrednicisControllerTest < ActionController::TestCase
  setup do
    @urednici = urednicis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:urednicis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create urednici" do
    assert_difference('Urednici.count') do
      post :create, urednici: { city: @urednici.city, name: @urednici.name, street: @urednici.street, surname: @urednici.surname, zip: @urednici.zip }
    end

    assert_redirected_to urednici_path(assigns(:urednici))
  end

  test "should show urednici" do
    get :show, id: @urednici
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @urednici
    assert_response :success
  end

  test "should update urednici" do
    patch :update, id: @urednici, urednici: { city: @urednici.city, name: @urednici.name, street: @urednici.street, surname: @urednici.surname, zip: @urednici.zip }
    assert_redirected_to urednici_path(assigns(:urednici))
  end

  test "should destroy urednici" do
    assert_difference('Urednici.count', -1) do
      delete :destroy, id: @urednici
    end

    assert_redirected_to urednicis_path
  end
end
