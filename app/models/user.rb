class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  has_many :purchases
  has_many :user_preferences
  has_many :friend_requests, class_name: "Friend", foreign_key: :request_sender_id
  has_many :friend_requests_received, class_name: "Friend", foreign_key: :request_receiver_id

  def users_requesting_me
    friend_requests.map(&:receiver)
  end

  def users_i_am_requesting
    friend_requests_received.map(&:sender)
  end

  def friends
    (users_requesting_me + users_i_am_requesting).uniq
  end
end
