class Student < ApplicationRecord
  has_many :submission
  has_and_belongs_to_many :cohort
  has_secure_password
end
