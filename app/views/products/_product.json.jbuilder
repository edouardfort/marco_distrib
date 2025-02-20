json.extract! product, :id, :name, :kind_id, :stock, :image, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
