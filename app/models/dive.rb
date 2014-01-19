class Dive < ActiveRecord::Base
	belongs_to :user
	has_one :air_type
	has_one :water_type
  has_many :comments
end
