class Result < ActiveRecord::Base
validates :mas, uniqueness: true
end
