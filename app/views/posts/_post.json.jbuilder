json.extract! post, :id, :nickname, :title, :content, :created_at, :updated_at
json.url post_url(post, format: :json)
