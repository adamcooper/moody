class Mood < ActiveRecord::Base
  has_one :emotion
  #validates_presence_of :emotion
end
