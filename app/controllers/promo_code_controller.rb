class PromoCodeController < ApplicationController
    before_action :set_params, only: [:create, :update]
    before_action :set_comment, only: [:update, :show, :destroy]

    def index
        @Promos = PromoCode.all
        render json: @promos
    end

    def show
        if @Promo
            render json: @Promo
        end
    end
    def create
        @Promo = PromoCode.new(set_params)
        if @Promo.save 
          render json: @Promo
        else
          render json: {message: "failed to create"}
        end
      end

      def update
        if @Promo.update(set_params)
          render json: @Promo
        else
          render json: {message:"failed to update"}
        end
      end

      def destroy
        if @Promo.present?
          @Promo.destroy
          render json: {message: "deleted Successfully"}
        end
      end

private
    def set_comment
        @Promo = PromoCode.find(params[:id])
    end
    def set_params
        params.require(:promocode).permit(:PName,:PStoct,:Price,:SerialNumber, owner_id)
    end

end
