json.extract! api_token, :id, :secret, :description, :expired_at, :user_id, :created_at, :updated_at
json.url api_token_url(api_token, format: :json)
