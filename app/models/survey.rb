class Survey < ActiveRecord::Base
  has_many :responses, dependent: :destroy
  has_many :questions, through: :responses
  belongs_to :facility
end
