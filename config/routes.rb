Rails.application.routes.draw do
    # INSTRUCTORS
  get '/instructors', to: 'instructors#index'
  get '/instructors/:id', to: 'instructors#show'
  get '/instructors/:id', to: 'instructors#edit'
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


  

  namespace :api do
   namespace :v1 do
        post '/login', to: 'auth#login'
        post '/signup', to: 'admins#create'
        get '/profile', to: 'admins#profile'
        get '/admins', to: 'admins#index'      #REMEBER TO DELETE OR COMMENT OUT THESE ROUTES AFTER SETTING UP AUTH
        get '/admins/:id', to: 'admins#show'   #REMEBER TO DELETE OR COMMENT OUT THESE ROUTES AFTER SETTING UP AUTH
        post '/admins', to: 'admins#create'
      end
    end

end