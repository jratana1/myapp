json.extract! customer, :id, :name, :active, :created_at, :updated_at
json.url customer_url(customer, format: :json)
