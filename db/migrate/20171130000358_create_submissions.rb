class CreateSubmissions < ActiveRecord::Migration[5.1]
  def change
    create_table :submissions do |t|
      t.string :title
      t.string :body
      t.string :category
      t.string :link
      t.references :student, foreign_key: true
      t.boolean :submit
      t.references :assignment, foreign_key: true

      t.timestamps
    end
  end
end
