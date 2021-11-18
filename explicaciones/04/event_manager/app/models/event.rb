class Event < ApplicationRecord
  belongs_to :event_type
  has_many :people, dependent: :delete_all

  validates :name, presence: true, uniqueness: true
  validates :date, presence: true

  def to_s
    name
  end
end
