class Runner < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :area
  # Runner needs to have first and last name and unique email
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :status, inclusion: { in: %w(never_run regular lapsed)}
  validates :group_run, inclusion: { in: [true, false] }
  validates :mission, inclusion: { in: [true, false] }
  validates :coach_run, inclusion: { in: [true, false] }
  validates :area, presence: true
  # validates :photo, presence: true
end
