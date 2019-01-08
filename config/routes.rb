Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  resources :teams do
    resources :requests
  end


  get '/my-teams', to: "dashboard#my_teams"
  get '/my_requests', to: "dashboard#my_requests"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
