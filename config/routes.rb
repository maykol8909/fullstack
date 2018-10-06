Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'book#index'
  get 'libros/todos', to: 'book#index'
  get 'libros/nuevo', to: 'book#new'
  post 'libros/crear', to: 'book#create'
  get 'libros/mostrar/:id', to: 'book#show'
  post 'libros/borrar/:id', to: 'book#delete'
  get 'libros/editar/:id', to: 'book#show_edit'
  post 'libros/edit/:id', to: 'book#edit'
  get 'mis-libros/todos', to: 'user_book#index'
  post 'mis-libros/agregar', to: 'user_book#add'
end
