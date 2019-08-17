Rails.application.routes.draw do
  namespace: api
    namespace: v1
      resources :fav_beaches
      resources :beaches
      resources :users
    end
  end
end
