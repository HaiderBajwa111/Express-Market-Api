class CommentsController < ApplicationController
    before_action :set_params, only: [:create, :update]
    before_action :set_comment, only: [:update, :show, :destroy]

    def index
        @Comments = Comment.all
        render json: @Comments
    end

    def show
        if @comment
            render json: @comment
        end
    end
    def create
        @Comment = Comment.new(set_params)
        if @Comment.save 
          render json: @Comment
        else
          render json: {message: "failed to create"}
        end
      end

      def update
        if @Comment.update(set_params)
          render json: @Comment
        else
          render json: {message:"failed to update"}
        end
      end

      def destroy
        if @Comment.present?
          @Comment.destroy
          render json: {message: "deleted Successfully"}
        end
      end

private
    def set_comment
        @Comment = Comment.find(params[:id])
    end
    def set_params
        params.require(:comment).permit(:CData,:products_id, :users_id)
    end

end
