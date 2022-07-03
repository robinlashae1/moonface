class ProductsController < ApplicationController
    def index
        render json: Product.in_batches(of: 10).each_record
    end

    def create
        product = current_user.products.create!(products_params)
        render json: product, status: :created
    end

    def show
        product = find_product
        render json: product
    end
    def destroy
        product = find_products
        product.destroy
        render json: {}, status: :no_content
    end
    private
    def products_params
        params.permit(:id, :name, :size, :stone, :description, :inStock, :type, :user_id)
    end
    def find_products
        Product.find_by(id: params[:id])
    end
end
