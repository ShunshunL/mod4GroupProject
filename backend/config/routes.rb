Rails.application.routes.draw do

    resources :likes, only: [:create, :destroy]
    resources :comments
    resources :posts
    resources :followers, only: [:show, :create, :destroy]
    resources :profiles
    resources :users
    post '/auth', to: 'auth#create'
    get '/current_user', to: 'auth#show'
    get '/get_posts/:profile_id', to: 'posts#profiles_posts'
    get '/get_followers/:profile_id', to: 'followers#profiles_followers'
    get '/get_follower_requests/:profile_id', to: 'followers#profiles_follower_requests'
    # get '/find_likers/:post_id', to 'posts#findLikers'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
 