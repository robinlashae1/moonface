class BlogsController < ApplicationController
    def index
        render json: Blog.in_batches(of: 10).each_record
    end

    def create
        blog = current_user.blogs.create!(blogs_params)
        render json: blog, status: :created
    end

    def show
        blog = find_blog
        render json: blog
    end
    def destroy
        blog = find_blogs
        blog.destroy
        render json: {}, status: :no_content
    end
    private
    def blogs_params
        params.permit(:title, :content, :user_id)
    end
    
    def find_blogs
        Blog.find_by(id: params[:id])
    end
end
