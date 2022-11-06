class Pedido < ApplicationRecord
  #pertence a um cliente 
  belongs_to :cliente

# há mais de um produto, para ser feito para o pedido
  has_many :pedido_produtos
end
