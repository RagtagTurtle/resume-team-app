Rails.application.routes.draw do
  namespace :api do

    get '/students' => 'students#index'
    post '/students' => 'students#create'
    get '/students/:id' => 'students#show'
    patch '/students/:id' => 'students#update'
    delete '/students/:id' => 'students#destroy'
    

    post '/experiences' => 'experiences#create'
    patch '/experiences/:id' => 'experiences#update'
    delete '/experiences/:id' => 'experiences#destroy'

    post '/skills' => 'skills#create'
    patch '/skills/:id' => 'skills#update'
    delete '/skills/:id' => 'skills#destroy'
  end
end
