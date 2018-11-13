Rails.application.routes.draw do
  # List
  get 'tasks', to: 'tasks#index', as: :tasks
  # Create
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'
  # show single task
  get 'tasks/:id', to: 'tasks#show', as: :task
  # edit
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_tasks
  patch 'tasks/:id', to: 'tasks#update'
  # delete
  delete 'tasks/:id', to: 'tasks#destroy', as: :destroy_task
end
