class Project < ApplicationRecord
  belongs_to :user

  has_many :updates
  has_many :subscriptions
end
