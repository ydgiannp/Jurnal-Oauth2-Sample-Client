Rails.application.routes.draw do
  root to: 'home#index'

  get '/logout', to: 'home#logout'

end
