class Number < ActiveRecord::Base
  validates :power, :presence => true
  validates :power, :uniqueness => true
  validates :value, :presence => true
  validates :value, :uniqueness => true
end
