class StoriesController < ApplicationController
  protect_from_forgery

    def index 
        @stories = Story.all
        render json: @stories, except: [:created_at, :updated_at], include: :user
    end
    
    
    # def new 
    #   story = Story.new(stories_params)
    #   if Story.save
    #       render json: story, except: [:created_at, :updated_at]
    #   else 
    #       render json: { errors: story.errors } 
    #   end
    # end 
    
    
      def show
        set_story
        render json: @story = Story.find(params[:id])
      end
    
    
    
      def create
        story = Story.new(story_params)
    
        if story.save
          render json: story, status: :created
        else
          render json: story.errors, status: :unprocessable_entity
        end
      end
    
      def edit
        @story = Story.find(params[:id])
      end
    
      def update
        story = Story.find(params[:id])
          if story.update(story_params)
            render json: story
          else 
            render json: { errors: story.errors } 
          end
      end
    
      def destroy
        @story = Story.find(params[:id])
        @story.destroy
      end
    
      private
    
      def set_story
        @story = Story.find(params[:id])
      end
    
    def story_params
        params.permit(:questionOne, :questionTwo, :questionThree, :questionFour, :questionFive, :questionSix, :user_id, :story_id, :id)
    end
end
