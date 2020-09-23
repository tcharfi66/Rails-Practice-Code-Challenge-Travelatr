class BloggersController < ApplicationController
  
    def show 
        @blogger = Blogger.find(params[:id])
    end

    def new 
        @blogger = Blogger.new 
    end 

    def create 
        @blogger =Blogger.create(blogger_params)
        redirect_to post_path(post)
    end

    private 

    def blogger_params
        params.require(:blogger).permit(:name, :bio, :age)
    end 
    
end
  