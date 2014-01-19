json.array!(@comments) do |comment|
  json.extract! comment, :id, :user_id, :dive_id, :comment_text
  json.url comment_url(comment, format: :json)
end
