Rails.application.routes.draw do
  get '/cars' => 'cars#index' 
  get '/manufacturers' => 'manufacturers#index' # show 
  patch '/cars/:id' => 'cars#update'
  patch '/manufacturers/:id' => 'manufacturers#update' # update
  get '/cars/:id' => 'cars#show'
  get '/manufacturers/:id' => 'manufacturers#show' # find (dynamic)
  delete '/cars/:id' => 'cars#destroy' 
  delete '/manufacturers/:id' => 'manufacturers#destroy' # delete (destroy)
  post '/cars' => 'cars#create'
  post '/manufacturers' => 'manufacturers#create'# create
end
