class User < ActiveRecord::Base
  has_one :profile, dependent: :destroy
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true


  def time_order
    
  end
end
