Rails.application.routes.draw do

  root 'welcome#index'
  devise_for :users

  resources :teachers
  resources :tutorings

  get 'landing', to: 'teachers#landing', as: 'teachers_landing'


end
