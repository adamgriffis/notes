class Note < ApplicationRecord
  validates_presence_of :title
  validates_length_of :description, maximum: 1000
end
