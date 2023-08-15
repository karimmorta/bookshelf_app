class BooksController < ApplicationController
    def index
    end

    def new
    end

    def create
        # Retrieve the book parameters that we submit in the form
        title = params[:title]
        description = params[:description]
        author = params[:author]

        # Create a new record in the database with this parameters
        Book.create(title: title, description: description, author: author)
        
        # And then redirect to the index page
        redirect_to books_path
    end
    def modify
        # Retrieve the current book
        @book = Book.find(params[:id])
    end
    def update
       # Retrieve the current book
        @book = Book.find(params[:id])

        # update the record in the database with this parameters
        @book.update(title: params[:book][:title], description: params[:book][:description], author: params[:book][:author])
        
        # And then redirect to the index page
        redirect_to books_path
    end
    def destroy
        @book = Book.find(params[:id])
        
        @book.destroy

        redirect_to books_path
    end
end