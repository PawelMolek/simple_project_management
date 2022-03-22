Rails.application.routes.draw do
  resources :projects do
    resources :tasks
  end
  devise_for :users
  root "projects#index"
end
