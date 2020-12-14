Rails.application.routes.draw do

  root 'pages#index'

  get '/apinewlistings', controller: 'newlistings', action: 'newlistings'
  get '/apiallsalelistings', controller: 'newlistings', action: 'allsalelistings'
  get '/apialllistings', controller: 'newlistings', action: 'alllistings'

  #namespace :api, defaults: {format: :json} do
  #  namespace :v1 do
  #    resources :listings, only: [:newlistings, :alllistings, :allsalelistings]
  #  end
  # end


  match '*path', to: 'pages#index', via: :all

end
