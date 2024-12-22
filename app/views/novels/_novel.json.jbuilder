json.extract! novel, :id, :title, :author, :publish, :password_digest, :, :novel_body, :point, :novel_tags, :created_at, :updated_at
json.url novel_url(novel, format: :json)
