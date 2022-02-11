json.extract! post, :id, :title, :image, :likes, :comments_count, :created_at, :updated_at
json.url post_url(post, format: :json)
