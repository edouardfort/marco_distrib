class Product < ApplicationRecord
  belongs_to :kind, optional: true
  
  validates :name, :kind, :stock, :image, :price, presence: true

  def to_s
    name
  end

  
end
