Rails.application.routes.draw do
 
  resources :locations
  get 'places/index'
  get 'admin/users/top'
  get 'unsubscribe/top'
  root 'user/users#top'


  devise_for :admins
  devise_for :users

   
   get 'places/search_location',to: 'places#search_location' ,as: 'places_search_location'


  namespace :user do
   resources :users, :timelines
end

  namespace :admin do
  	resources :users, :timelines
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
