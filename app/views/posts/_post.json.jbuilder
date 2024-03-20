json.extract! post, :id, :name, :short_name, :description, :created_at, :updated_at
json.url post_url(post, format: :json)
