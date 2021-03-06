Rails.application.routes.draw do
  resources :projects do
    resources :tasks
  end
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root "projects#index"
end
