class Project < ApplicationRecord
  validates :name, presence: true
  validates :state, presence: true
  validates :description, presence: true
end
