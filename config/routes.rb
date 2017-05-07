Rails.application.routes.draw do
  get 'landing/index'

root controller: :landing, action: :index
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles
end
