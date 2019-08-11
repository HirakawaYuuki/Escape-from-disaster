Rails.application.routes.draw do
 
  root 'user/users#top'


  devise_for :admins
  devise_for :users


  namespace :users do
   resources :users, :timelines
end

  namespace :admins do
  	resources :users, :timelines
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
