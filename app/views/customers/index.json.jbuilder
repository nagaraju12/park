json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :company, :phone, :email, :quaries
  json.url customer_url(customer, format: :json)
end
