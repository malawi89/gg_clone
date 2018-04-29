class Area < ApplicationRecord
  belongs_to :user
  has_many :runners

  validates :name, presence: true
end
