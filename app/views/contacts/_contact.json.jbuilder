json.extract! contact, :id, :title, :body, :created_at, :updated_at
json.url contact_url(contact, format: :json)
