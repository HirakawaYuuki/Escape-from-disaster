Rails.application.routes.draw do
 
  get 'admin/users/top'
  get 'unsubscribe/top'
  root 'user/users#top'


  devise_for :admins
  devise_for :users


  namespace :user do
   resources :users, :timelines
end

  namespace :admin do
  	resources :users, :timelines
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
