class Mood < ActiveRecord::Base
  belongs_to :user
  belongs_to :emotion
  #validates_presence_of :emotion
end
