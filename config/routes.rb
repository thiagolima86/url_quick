Rails.application.routes.draw do
  resources :urls, only: [:new, :create, :show]

  root "urls#new"

  get '/u/:hash', to: 'open_urls#show'
end
