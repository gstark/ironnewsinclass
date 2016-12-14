Rails.application.routes.draw do
  devise_for :users
  resources :stories do
    member do
      get :upvote
      get :downvote
    end
  end

  root "stories#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
