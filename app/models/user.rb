# has email:string in our db
# has password_digest:string in our db
#
# password:string is a virtual attribute
# password_confirmation:string is a virtual attribute

class User < ApplicationRecord
  has_many :twitter_accounts
  has_many :tweets

  has_secure_password

  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address." }
end
