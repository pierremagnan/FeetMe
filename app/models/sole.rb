class Sole < ActiveRecord::Base
  has_many :records
  belongs_to :users
end
