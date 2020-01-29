class Guest < ApplicationRecord
  validates :name, :email, :attend, :subject, :comment, presence: true
end
