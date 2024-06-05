class CartItemsController < ApplicationController
  def destory
    @cart = current_cart
    @cart_item = @cart.cart_items.find_by(product_id: params[:id])
    @prodcut = @cart_item.product
    @cart_item.destory

    flash[:warning] = "成功將 #{＠product.title} 從購物車刪除"
    redirect_to :back
  end
end
