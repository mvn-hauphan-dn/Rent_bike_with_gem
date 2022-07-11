Rails.application.routes.draw do
  devise_for :users, controller: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  get 'profile', to: 'users#show'
  get 'help', to: 'static_pages#help'
  root "static_pages#home"
end
