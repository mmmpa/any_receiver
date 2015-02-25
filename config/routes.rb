Rails.application.routes.draw do
  get '*path', to: 'application#get'
  post '*path', to: 'application#post'
  put '*path', to: 'application#put'
  patch '*path', to: 'application#patch'
  delete '*path', to: 'application#delete'

  get '', to: 'application#get'
  post '', to: 'application#post'
  put '', to: 'application#put'
  patch '', to: 'application#patch'
  delete '', to: 'application#delete'
end
