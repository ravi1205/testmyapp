json.extract! product, :id, :name, :desc, :price, :gluten_free, :dairy_free, :peanuts_free, :vegan, :vegetarian, :available, :catering, :featured, :created_at, :updated_at
json.url product_url(product, format: :json)
