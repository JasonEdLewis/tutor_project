class CreateInstructors < ActiveRecord::Migration[6.0]
  def change
    create_table :instructors do |t|
      t.string :name
      t.string :subject
      t.string :specialty
      t.integer :hours

      t.timestamps
    end
  end
end
