Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :fav_beaches
      resources :beaches
      resources :users
    end
  end
end
