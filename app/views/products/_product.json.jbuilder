json.extract! product, :id, :name, :description, :category_id, :size, :color, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
