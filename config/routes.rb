Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/genres/:id' , to:  "genres#show" , as: "genre" 
  get '/genres/new', to: "genre#new"  , as: "new_genre"
  get "/genres/:id/edit", to: 'genres#edit', as: "edit_genre"
  post '/genres' , to:  "genres#create"  
  patch '/genres/:id' , to:  "genres#update"  
  
  get '/songs/:id' , to:  "songs#show" , as: "song"
  get '/songs/new', to: "songs#new"  , as: "new_song"
  get "/songs/:id/edit", to: 'songs#edit', as: "edit_song"
  post '/songs' , to:  "songs#create"
  patch '/songs/:id' , to:  "songs#update"

  
  get '/artists/new', to: "artists#new" , as: "new_artist"
  post '/artists' , to:  "artists#create"  
  get '/artists/:id' , to:  "artists#show" , as: "artist" 
  get "/artists/:id/edit", to: 'artists#edit', as: "edit_artists"
  patch '/artists/:id' , to:  "artists#update"  


end
