require "application_system_test_case"

class AdminstradorsTest < ApplicationSystemTestCase
  setup do
    @adminstrador = adminstradors(:one)
  end

  test "visiting the index" do
    visit adminstradors_url
    assert_selector "h1", text: "Adminstradors"
  end

  test "should create adminstrador" do
    visit adminstradors_url
    click_on "New adminstrador"

    fill_in "Email", with: @adminstrador.email
    fill_in "Nome", with: @adminstrador.nome
    fill_in "Senha", with: @adminstrador.senha
    click_on "Create Adminstrador"

    assert_text "Adminstrador was successfully created"
    click_on "Back"
  end

  test "should update Adminstrador" do
    visit adminstrador_url(@adminstrador)
    click_on "Edit this adminstrador", match: :first

    fill_in "Email", with: @adminstrador.email
    fill_in "Nome", with: @adminstrador.nome
    fill_in "Senha", with: @adminstrador.senha
    click_on "Update Adminstrador"

    assert_text "Adminstrador was successfully updated"
    click_on "Back"
  end

  test "should destroy Adminstrador" do
    visit adminstrador_url(@adminstrador)
    click_on "Destroy this adminstrador", match: :first

    assert_text "Adminstrador was successfully destroyed"
  end
end
