Rails.application.routes.draw do
  # Define suas rotas de aplicação usando o DSL em https://guides.rubyonrails.org/routing.html

  get '/login', to: 'application#login', as: :login
  post '/login', to: 'application#home'

  get '/login/cadastrar_nova_amostra', to: 'home#cadastrar_nova_amostra', as: :cadastrar_nova_amostra
  post '/login/cadastrar_nova_amostra', to: 'home#cadastra_nova_amostra'

  get '/login/retirar_amostra', to: 'home#retirar_amostra', as: :retirar_amostra
  post '/login/retirar_amostra', to: 'home#retirar_amostra', as: :retirar_amostra_post

  get '/busca_amostra', to: 'home#busca_amostra', as: :busca_amostra

  get '/api/amostras_biorepositorio', to: 'amostras_biorepositorio#index'

  get '/coleta', to: 'coleta#new'

  #get '/coleta', to: 'coleta#create'
  post '/coleta', to: 'coleta#create'


  # Define a rota raiz ("/")
  root 'application#login'

  # Adiciona a rota para a ação create do controlador AmostrasController
  resources :amostras, only: [:create]
end
