class Project < ApplicationRecord
  belongs_to :user
  belongs_to :student, { class_name: "User" }

  has_many :updates
end
