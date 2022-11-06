require "application_system_test_case"

class TipoProdutosTest < ApplicationSystemTestCase
  setup do
    @tipo_produto = tipo_produtos(:one)
  end

  test "visiting the index" do
    visit tipo_produtos_url
    assert_selector "h1", text: "Tipo produtos"
  end

  test "should create tipo produto" do
    visit tipo_produtos_url
    click_on "New tipo produto"

    fill_in "Nome", with: @tipo_produto.nome
    click_on "Create Tipo produto"

    assert_text "Tipo produto was successfully created"
    click_on "Back"
  end

  test "should update Tipo produto" do
    visit tipo_produto_url(@tipo_produto)
    click_on "Edit this tipo produto", match: :first

    fill_in "Nome", with: @tipo_produto.nome
    click_on "Update Tipo produto"

    assert_text "Tipo produto was successfully updated"
    click_on "Back"
  end

  test "should destroy Tipo produto" do
    visit tipo_produto_url(@tipo_produto)
    click_on "Destroy this tipo produto", match: :first

    assert_text "Tipo produto was successfully destroyed"
  end
end
