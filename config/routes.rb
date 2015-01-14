Qhh::Application.routes.draw do
  get 'errors/file_not_found'

  get 'errors/unprocessable'

  get 'errors/internal_server_error'

  root "pages#home"    
  get "home", to: "pages#home", as: "home"
  #get "inside", to: "pages#inside", as: "inside"
  get "/contacto", to: "pages#contact", as: "contacto"
  post "/emailconfirmation", to: "pages#email", as: "email_confirmation"
  
  get "posts", to: "pages#posts", as: "posts"
  get "posts/:id", to: "pages#show_post", as: "post"    
  devise_for :users
  
  namespace :admin do
    root "base#index"
    resources :users
    get "posts/drafts", to: "posts#drafts", as: "posts_drafts"
    get "posts/dashboard", to: "posts#dashboard", as: "posts_dashboard"
    resources :posts
  end

  # Nuevas paginas
  get "/myqhh", to: "pages#myqhh", as: "myqhh"
  get "/encuentra", to: "pages#encuentra", as: "encuentra"
  get "/categorias/:id", to: "pages#show_category", as: "categoria"
  get "/sitios/:id", to: "pages#show_site", as: "sitio"

  # Mensajes de error
  match '/404', to: 'errors#file_not_found', via: :all
  match '/422', to: 'errors#unprocessable', via: :all
  match '/500', to: 'errors#internal_server_error', via: :all

end
