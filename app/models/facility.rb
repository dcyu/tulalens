class Facility < ActiveRecord::Base
  has_many :surveys
  validates :name, uniqueness: true
end
