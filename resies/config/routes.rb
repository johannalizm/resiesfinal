Rails.application.routes.draw do

  resources :historia
  resources :questions
  resources :formularios
  resources :question
  resources :instituciones
  devise_for :users, controllers: {:registrations => 'user/registrations', :confirmations =>'user/confirmations'}
  root to: 'welcome#index'

  get 'manual/', to: 'manual#index'

  post'formularios/historia/:id',to:'formularios#historial' , as: 'historial'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
