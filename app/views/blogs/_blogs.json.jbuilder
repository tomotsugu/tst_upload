json.extract! blog, :id, :title, :content, :created_at, :updated_at
json.url blogs_url(blog, format: :json)
