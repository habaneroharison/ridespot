Rails.application.routes.draw do
  get 'users/show'
  devise_for :users

  root "spots#prefectures"

  get "prefectures/:location", to: "spots#by_location", as: :prefecture_spots

  resources :spots do
    resources :posts, only: [:create, :destroy]
  end

  get "users/:id", to: "users#show", as: :user_profile

  get "up" => "rails/health#show", as: :rails_health_check
end