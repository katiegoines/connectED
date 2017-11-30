class AddReferencesToStudentModel < ActiveRecord::Migration[5.1]
  def change
    add_reference :students, :cohort, foreign_key: true
    add_reference :students, :submission, foreign_key: true
  end
end
