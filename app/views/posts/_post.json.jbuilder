json.extract! post, :id, :username, :headline, :disc, :created_at, :updated_at
json.url post_url(post, format: :json)
