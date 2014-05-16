class User < ActiveRecord::Base
  has_many :soles
  has_many :pins
  has_many :messages
end
