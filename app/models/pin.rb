class Pin < ActiveRecord::Base
  serialize :coords
  serialize :values
  belongs_to :users
end
