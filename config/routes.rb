Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do

      resources :users do
        resources :events
      end
      resources :events
      resources :user_events

    end
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
