Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "tasks", to: "tasks#index", as: :tasks
  get "tasks/new", to: "tasks#new", as: :task_new
  post "tasks", to: "tasks#create", as: :task_create
  get "tasks/:id", to: "tasks#show", as: :task
  get "tasks/:id/edit", to: "tasks#edit", as: :task_edit
  patch "tasks/:id", to: "tasks#update", as: :task_update
  delete "tasks/:id", to: "tasks#destroy", as: :task_destroy
end
