class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :password_digest
      t.integer :code

      t.timestamps
    end
  end
end
