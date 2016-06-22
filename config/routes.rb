Rails.application.routes.draw do
  root to: "home#index"

  get "/code-of-conduct",         to: "home#code_of_conduct"
  get "/accommodation-partners",  to: "home#accommodation_partners"

  get "/cfp", to: redirect("https://rdrc-cfp.herokuapp.com/events/reddotrubyconf")

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  mount ActionCable.server => "/cable"

  get "chatroom", to: "chatrooms#show"
  get "engage", to: "sessions#new"
  post "create", to: "sessions#create"
  resources :messages, only: :create
  post "render_message", to: "messages#render_message"
end
