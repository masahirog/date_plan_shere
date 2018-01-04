json.extract! plan, :id, :title, :prefecture_id, :user_id, :likes_count, :created_at, :updated_at
json.url plan_url(plan, format: :json)
