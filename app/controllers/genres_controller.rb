class GenresController < ApplicationController

    def index 
        genres = Genre.all
        render json: genres, except: [:created_at, :updated_at], include: :stories, except: [:created_at, :updated_at]
    end
    
    
    
    
    def new 
      genre = Genre.new(genre_params)
      if Genre.save
          render json: genre, except: [:created_at, :updated_at]
      else 
          render json: { errors: genre.errors } 
      end
    end 
    
    
      def show
        render json: @genre = Genre.find(params[:id])
      end
    
    
    
      def create
        genre = Genre.new(genre_params)
    
        if genre.save
          render json: genre, status: :created
        else
          render json: genre.errors, status: :unprocessable_entity
        end
      end
    
      def edit
        @genre = Genre.find(params[:id])
      end
    
      def update
        genre = Genre.find(params[:id])
          if genre.update(genre_params)
            render json: genre
          else 
            render json: { errors: genre.errors } 
          end
      end
    
      def destroy
        @genre = Genre.find(params[:id])
        @genre.destroy
      end
    
      private
    
      def set_genre
        @genre = Genre.find(params[:id])
      end
    
      def genre_params
        params.permit(:genre, :description)
        #add more 
      end
    
    
    
    
  
end
