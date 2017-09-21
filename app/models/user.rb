class User < ApplicationRecord
  devise :database_authenticatable, :registerable
         #:recoverable, :rememberable, :trackable, :validatable
  has_many :subscriptions
  has_many :projects
  has_many :updates, { through: :projects }
end
