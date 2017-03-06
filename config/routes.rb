Rails.application.routes.draw do
  get '/fortune' => 'fortunes#tell_your_fortune'
  get '/lottery' => 'fortunes#win_the_lotto'
  get '/beers' => 'fortunes#beer'
  get '/counter' => 'fortunes#counter'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
