json.extract! comment, :id, :novel_id, :body, :reviewer_name, :deleted, :created_at, :updated_at
json.url comment_url(comment, format: :json)
