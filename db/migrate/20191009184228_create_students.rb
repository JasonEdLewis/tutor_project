class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :school_id
      t.string :reason
      t.datetime :date
      t.integer :hours
      t.string :school
      t.integer :grade
      t.boolean :sped
      t.string :counselor_info
      t.string :guardian
      t.string :address
      t.string :home_no
      t.string :cell
      t.string :email

      t.timestamps
    end
  end
end
