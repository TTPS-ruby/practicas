class Person < ApplicationRecord
  belongs_to :event

  validates :first_name, :last_name, presence: true, length: { in: 2..255 }
end
