ApplicationRecord.extend ActiveHash::Associations::ActiveRecordExtensions
class Plan < ApplicationRecord
  has_many :plan_details, inverse_of: :plan
  accepts_nested_attributes_for :plan_details, allow_destroy: true

  has_many :likes
  belongs_to :user
  def like_user(user_id)
   likes.find_by(user_id: user_id)
  end

  belongs_to_active_hash :genre
  belongs_to_active_hash :prefecture

  validates :title, presence: true

end
