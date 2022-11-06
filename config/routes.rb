Rails.application.routes.draw do

  resources :adminstradors

root to:"login#index"
  get "/home", to: "home#index"


  resources :pedidos do 
    resources :pedido_produtos
  end

  resources :clientes
  resources :produtos

  resources :tipo_produtos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
get'/login', to: "login#index"

post'/login/logar', to: "login#logar"

end
