Rails.application.routes.draw do

  get '/not_invited', to: 'home#not_invited'

  get '/:code', to: 'sessions#create'

  root to: 'home#index'
end
