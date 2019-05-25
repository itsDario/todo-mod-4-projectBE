class Event < ApplicationRecord
  belongs_to :calender
  belongs_to :user
end
