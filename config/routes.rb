Rails.application.routes.draw do
  resources :urls, only: [:new, :create, :show]

  root "urls#new"
end
