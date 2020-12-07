json.extract! client, :id, :lead_status, :lead_source, :project_address, :phone_number, :email, :type_of_project, :payment_method, :created_at, :updated_at
json.url client_url(client, format: :json)
