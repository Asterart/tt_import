Rails.application.routes.draw do
  get 'static_pages/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


root 'static_pages#index'

  get '/candidates', to: 'candidates#index'
  get '/import_candidates', to: 'candidates#new'
  post '/import_candidates', to: 'candidates#create'
  get '/import_notes', to: 'notes#new'
  post '/import_notes', to: 'notes#import'

resources :jobs

end
