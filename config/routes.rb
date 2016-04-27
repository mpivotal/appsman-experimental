Rails.application.routes.draw do

  resources :orgs do
    resources :members, shallow: true
    resources :spaces, shallow: true do
      resources :apps, shallow: true
    end
  end

  get 'main/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'

  root to: 'main#home'

end
