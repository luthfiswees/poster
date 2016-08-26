Rails.application.routes.draw do
  get 'home/index'
  get 'home/start_poster'

root :to => 'home#index'

  resources :tracks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
