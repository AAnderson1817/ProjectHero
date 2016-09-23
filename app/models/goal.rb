class Goal < ActiveRecord::Base
  belongs_to :user
  has_many :advices

  after_initialize :set_defaults, unless: :persisted?
  # The set_defaults will only work if the object is new

  def set_defaults
    self.completed = false if self.completed.nil?
  end
end
