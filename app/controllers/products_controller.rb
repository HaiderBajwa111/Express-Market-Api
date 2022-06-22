class ProductsController < ApplicationController
    before_action :set_params, only: [:create, :update]
    before_action :set_product, only: [:update, :show, :destroy]

    def index
        products = Product.all
        render json: products
    end

    def show
        if @product
            render json: @product
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
    def set_product
        @product = Product.find(params[:id])
    end
    def set_params
        params.permit(:name,:stock,:price,:serial_number, :owner_id, :image)
    end

end
