Rails.application.routes.draw do
  root 'static_pages#top'
  get '/signup', to: 'users#new'

  # ログイン機能
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  

  resources :users do
    member do
      get 'edit_basic_info'
      patch 'update_basic_info'
      patch 'update_user_info'
      get 'attendances_edit_log'
      get 'attendances/edit_one_month'
      patch 'attendances/update_one_month' # この行が追加対象です。'
      get 'edit1_basic_info'
      patch 'update_basic1_info'
      get 'edit2_basic_info'
      patch 'update_basic2_info'
      get 'kyoten_info'
      patch 'update_kyoten_info'
 
    end
    resources :attendances, only: :update
  end
end