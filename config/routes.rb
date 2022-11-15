Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # lire tous les tasks
  get '/tasks', to: 'tasks#index'

  # create une task
  get '/tasks/new', to: 'tasks#new'
  post '/tasks', to: 'tasks#create'

  # update une task
  get '/tasks/:id/edit', to: 'tasks#edit', as: :task_edit
  patch '/tasks/:id', to: 'tasks#update'

  # delete une task
  delete '/tasks/:id', to: 'tasks#destroy', as: :task_destroy

  # lire les info d'une task
  get '/tasks/:id', to: 'tasks#show', as: :task

  # resources :restaurants, only: [:new, :create]
end
