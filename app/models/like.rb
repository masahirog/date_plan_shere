class Like < ApplicationRecord
  belongs_to :plan, counter_cache: :likes_count
  belongs_to :user
end
