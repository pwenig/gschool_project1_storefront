class Property < ActiveRecord::Base
  has_many :ideas
  belongs_to :neighborhood
end