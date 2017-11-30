class Student < ApplicationRecord
  belongs_to :submission
  belongs_to :cohort
end
