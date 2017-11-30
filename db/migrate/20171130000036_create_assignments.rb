class CreateAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :assignments do |t|
      t.string :title
      t.string :body
      t.references :teacher, foreign_key: true
      t.date :due
      t.string :assignment_type

      t.timestamps
    end
  end
end
