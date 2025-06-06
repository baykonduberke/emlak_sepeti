class User < ApplicationRecord
  has_many :properties, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def agent?
    user_type == "agent"
  end

  def customer?
    user_type == "customer"
  end
end
