class Shopping < ApplicationRecord
  belongs_to :product
  belongs_to :room

  after_create :decrease_product_stock

  private

  def decrease_product_stock
    if product.stock > 0
      product.update(stock: product.stock - 1)
    end
  end
end
