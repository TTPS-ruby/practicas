class Event < ApplicationRecord
  belongs_to :event_type
  has_many :people
end
