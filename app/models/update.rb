class Update < ApplicationRecord
  belongs_to :project
  belongs_to :user
  after_initialize :set_defaults, unless: :persisted?

  def set_defaults
    self.approval ||= false
  end
end
