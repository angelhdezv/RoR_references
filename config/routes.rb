Rails.application.routes.draw do
  resources :tratamientos
  resources :medicamentos
  resources :receta
  resources :mascota
  resources :doctors
  resources :duenios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
