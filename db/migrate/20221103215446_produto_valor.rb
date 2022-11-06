class ProdutoValor < ActiveRecord::Migration[7.0]
  def change
    add_column :produtos, :valor, :float 
  end
end
