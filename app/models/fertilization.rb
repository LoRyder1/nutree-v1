class Fertilization < ActiveRecord::Base
  belongs_to :goal
  belongs_to :fertilizer
end
