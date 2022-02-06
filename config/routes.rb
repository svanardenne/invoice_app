Rails.application.routes.draw do
  devise_for :users
  root to: 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/contact', to: 'static_pages#contact'
  get '/settings', to: 'static_pages#settings'
  resources :invoices
  resources :invoice_templates
end
