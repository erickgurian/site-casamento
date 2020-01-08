Rails.application.routes.draw do
  devise_for :users
  root to: 'marriage#index'

  resources :marriage, only: %i[index]
end
