Rails.application.routes.draw do
  
  resources :posts
  
  resources :users
  
  devise_for :users,
  			:path => '',
  			:path_names => {:sign_in => 'login', :sign_out => 'logout', :edit => 'profile'}
  
  
  root 'posts#index'
end