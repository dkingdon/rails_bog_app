Rails.application.routes.draw do

  get '/creatures', to: 'creatures#index', as: 'creatures'
  get '/creatures/new', to: 'creatures#new', as: 'new_creature'
  post '/creatures', to: 'creatures#create'
  get '/creatures/:id', to: 'creature#show', as: 'creature'
  get '/creatures/:id/edit', to: 'creatures#edit', as: 'edit_creature'
  patch '/creatures/:id', to: 'creatures#update'
  delete '/creatures/:id', to: 'creatures#destroy'
end
