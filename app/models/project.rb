class Project < ApplicationRecord
  belongs_to :user

  has_many :users
  has_many :updates
end
