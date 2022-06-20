class ProductController < ApplicationController
    before_action :set_params, only: [:create, :update]
    before_action :set_comment, only: [:update, :show, :destroy]

    def index
        @Products = Product.all
        render json: @products
    end

    def show
        if @Product
            render json: @Product
        end
    end
    def create
        @Product = Product.new(set_params)
        if @Product.save 
          render json: @Product
        else
          render json: {message: "failed to create"}
        end
      end

      def update
        if @Product.update(set_params)
          render json: @Product
        else
          render json: {message:"failed to update"}
        end
      end

      def destroy
        if @Product.present?
          @Product.destroy
          render json: {message: "deleted Successfully"}
        end
      end

private
    def set_comment
        @Product = Product.find(params[:id])
    end
    def set_params
        params.require(:product).permit(:PName,:PStoct,:Price,:SerialNumber, owner_id)
    end

end
