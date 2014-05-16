class Record < ActiveRecord::Base
  serialize :values
  belongs_to :soles
end
