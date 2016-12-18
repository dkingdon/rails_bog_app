Rails.application.routes.draw do

  get '/creatures', to: 'creatures#index', as: 'creatures' 

end
