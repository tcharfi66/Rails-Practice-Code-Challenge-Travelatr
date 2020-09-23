class PostsController < ApplicationController
   
    def show 
        @post = Post.find(params[:id])
        @content = @post.format_content 
    end 

    def new 
        @post = Post.new 
    end 

    def create 
        post = Post.create(post_params)
        redirect_to post_path(post)
    end 
   
    def edit
        @post = Post.find(params[:id])
    end 

    def update 
        @post = Post.find(params[:id])
        @post = Post.create(post_params)
        redirect_to post_path(@post.id)
    end 

    private 

    def post_params
        params.require(:post).permit(:title, :content, :likes, :blogger_id, :destination_id)
    end 
end
