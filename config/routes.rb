Rails.application.routes.draw do
  devise_for :users
  get 'doctors/doctoradmin'
  get 'welcome/index'
  resources :tratamientos
  resources :medicamentos
  resources :receta
  resources :mascota
  resources :doctors
  resources :duenios
 
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
