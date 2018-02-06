Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :sleeping_times do
    get ':user_id', to: 'sleeping_time#index'
    resources :start_times, only: [:create]
    resources :end_times, only: [:create]
  end

  resource :followers, only: [:create, :destroy] do
    get ':user_id', to: 'follower#index'
  end
end
