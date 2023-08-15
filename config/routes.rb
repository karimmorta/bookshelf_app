Rails.application.routes.draw do
  get '/books', to: 'books#index'
  get '/books/new', to: 'books#new'
  post '/books', to: 'books#create'
  get '/books/:id/modify', to: 'books#modify', as: :modify_books
  patch '/books/:id', to: 'books#update', as: :book
  delete '/books/:id', to: 'books#destroy'
end
