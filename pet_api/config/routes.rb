Rails.application.routes.draw do
  namespace :v1 do
    resources :dogs, except: [:destroy,:update]
  end
end
