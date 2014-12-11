Rails.application.routes.draw do
  
  root to: 'activities#index'

  resources :attendees  

  resources :activities

  devise_for :users, :controllers => { registrations: 'registrations' }

end
