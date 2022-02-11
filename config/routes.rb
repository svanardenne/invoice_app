Rails.application.routes.draw do
  devise_for :users
  root to: 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/contact', to: 'static_pages#contact'
  resources :invoices
  resources :invoice_templates
  resources :profiles
end
