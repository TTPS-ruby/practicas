class EventType < ApplicationRecord
  has_many :events, dependent: :restrict_with_error

  validates :name, presence: true, uniqueness: true
end
