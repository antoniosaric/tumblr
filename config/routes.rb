Rails.application.routes.draw do

  devise_for :users
resources :posts do 
  resources :comments
end

get '/about', to: 'pages#about'

root "posts#index"

end
