Rails.application.routes.draw do
  resources :songs
  get  '/', to: 'search#index'
  get  '/search', to: 'search#index'
  post '/search/show', to: 'search#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
