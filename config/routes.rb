Rails.application.routes.draw do

 resources :sessions 
 resources :users do
 resources :projectowners
 end
 
 root 'sessions#new'
 
 
 get 'login' =>'sessions#new' 
 
  get 'logout'=>'sessions#destroy'
  


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
