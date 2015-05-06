class Goal < ActiveRecord::Base
  belongs_to :field
  belongs_to :formula
  has_many :fertilizations
end
