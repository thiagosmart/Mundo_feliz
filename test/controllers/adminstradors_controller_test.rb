require "test_helper"

class AdminstradorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adminstrador = adminstradors(:one)
  end

  test "should get index" do
    get adminstradors_url
    assert_response :success
  end

  test "should get new" do
    get new_adminstrador_url
    assert_response :success
  end

  test "should create adminstrador" do
    assert_difference("Adminstrador.count") do
      post adminstradors_url, params: { adminstrador: { email: @adminstrador.email, nome: @adminstrador.nome, senha: @adminstrador.senha } }
    end

    assert_redirected_to adminstrador_url(Adminstrador.last)
  end

  test "should show adminstrador" do
    get adminstrador_url(@adminstrador)
    assert_response :success
  end

  test "should get edit" do
    get edit_adminstrador_url(@adminstrador)
    assert_response :success
  end

  test "should update adminstrador" do
    patch adminstrador_url(@adminstrador), params: { adminstrador: { email: @adminstrador.email, nome: @adminstrador.nome, senha: @adminstrador.senha } }
    assert_redirected_to adminstrador_url(@adminstrador)
  end

  test "should destroy adminstrador" do
    assert_difference("Adminstrador.count", -1) do
      delete adminstrador_url(@adminstrador)
    end

    assert_redirected_to adminstradors_url
  end
end
