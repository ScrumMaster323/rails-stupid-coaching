Rails.application.routes.draw do

  get '/questions/answer', to: 'questions#answer'

  get '/questions/ask', to: 'questions#ask', as: 'ask'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
