Rails.application.routes.draw do
  resources :artists, except: [:destroy]
  resources :instruments, except: [:destroy]
end
