require 'test_helper'

class Admin::ProductsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to admin_products_path
    else
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :quantity, :price)
  end
end
