class Teacher < ApplicationRecord
    has_many :cohort
    has_secure_password
end
