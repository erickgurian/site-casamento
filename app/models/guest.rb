class Guest < ApplicationRecord
  validates :name, :email, :attend, presence: true
end
