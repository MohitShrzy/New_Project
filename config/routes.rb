Rails.application.routes.draw do
  devise_for :users
  get 'admin/login'
  resources :students
  post 'admin/login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
