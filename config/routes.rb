Rails.application.routes.draw do
    # INSTRUCTORS
  get '/instructors', to: 'instructors#index'
  get '/instructors/:id', to: 'instructors#show'
  post '/instructors', to: 'instructors#create'
  delete '/instructors/:id', to: 'instructors#destroy'

    # STUDENTS
  get '/students', to: 'students#index'
  get '/students/:id', to: 'students#show'
  post '/students', to: 'students#create'

    # SESSIONS
  # resources :sessions
  get '/sessions', to: 'sessions#index'
  get '/sessions/:id', to: 'sessions#show'
  post '/sessions', to: 'sessions#create'

   # ADMINS
  # resources :admins
  post '/admins', to: 'admins#create'
  
  post '/logins', to: 'logins#create'

  get '/profiles', to: 'profiles#show'

end