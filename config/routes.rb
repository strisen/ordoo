Rails.application.routes.draw do
  # get 'orders/index'
  #
  # get 'orders/show'

  resources :orders,  only: [:index, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
