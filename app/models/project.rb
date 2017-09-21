class Project < ApplicationRecord
  belongs_to :staff, class_name: :User
  belongs_to :student, class_name: :User

  has_many :updates
end
