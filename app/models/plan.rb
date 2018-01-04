ApplicationRecord.extend ActiveHash::Associations::ActiveRecordExtensions
class Plan < ApplicationRecord
  has_many :plan_details, dependent: :destroy
  has_many :likes, dependent: :destroy
  belongs_to :user
  def like_user(user_id)
   likes.find_by(user_id: user_id)
  end

  belongs_to_active_hash :genre
  belongs_to_active_hash :prefecture

end
