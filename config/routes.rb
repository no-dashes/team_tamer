TeamTamer::Application.routes.draw do

  get 'members',    to: 'tamer#members'
  get 'teams',      to: 'tamer#teams'
  get 'scheduling', to: 'tamer#scheduling'

  namespace :api do
    resources :members
    resources :teams
    resources :scheduling
  end

  root to: redirect('/members')

end
