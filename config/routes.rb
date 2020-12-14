Rails.application.routes.draw do

  root 'pages#index'

  get '/apinewlistings', controller: 'newlistings', action: 'newlistings'
  get '/apiallsalelistings', controller: 'listings', action: 'allsalelistings'
  get '/apialllistings', controller: 'listings', action: 'alllistings'
  get '/apilisting/:listingid', controller: 'listings', action: 'listingbyid'
  get '/sortlistings/:sorttype/:sortorder', controller: 'listings', action: 'sortlistings'


  match '*path', to: 'pages#index', via: :all

end
