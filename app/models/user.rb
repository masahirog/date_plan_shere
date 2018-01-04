ApplicationRecord.extend ActiveHash::Associations::ActiveRecordExtensions
class User < ApplicationRecord
  has_many :likes
  has_many :plans

  belongs_to_active_hash :prefecture

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  validates :nickname,
  uniqueness: true,
  length: { minimum: 4, maximum: 10, message: "3文字以上10文字以下です" },
  format: { with: /\A[a-z0-9]+\z/, message: "ユーザー名は半角英数字です"}

  def to_param
    nickname
  end

  def self.find_for_oauth(auth)
    user = User.where(uid: auth.uid, provider: auth.provider).first
    unless user
      user = User.create(
        uid:      auth.uid,
        provider: auth.provider,
        email:    User.dummy_email(auth),
        password: Devise.friendly_token[0, 20],
        image: auth.info.image,
        name: auth.info.name,
        nickname: auth.info.nickname
      )
    end
    user
  end

  private

  def self.dummy_email(auth)
    "#{auth.uid}-#{auth.provider}@example.com"
  end
end
