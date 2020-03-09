Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :students, only: [:index, :show] 
  # creating dynamic route only using 'index' = '/students' and 'show' = '/students/:id'

  get '/students/:id/activate', to: 'students#activate', as: 'activate_student' 
  # creating 'a href' for directory called 'students' and the link is called 'activate_student'
end
