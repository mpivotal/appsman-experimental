Rails.application.routes.draw do
  get 'main/home'

  resources :orgs do
    resources :members
    resources :spaces
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'

  root to: 'main#home'

end
