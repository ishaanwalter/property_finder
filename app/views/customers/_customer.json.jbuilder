json.extract! customer, :id, :first_name, :last_name, :email, :contact_no, :created_at, :updated_at
json.url customer_url(customer, format: :json)
