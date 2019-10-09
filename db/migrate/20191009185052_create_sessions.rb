class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions do |t|
      t.belongs_to :student, null: false, foreign_key: true
      t.belongs_to :instructor, null: false, foreign_key: true
      t.belongs_to :admin, null: false, foreign_key: true
      t.datetime :date
      t.datetime :time
      t.boolean :home
      t.string :subject
      t.string :location
      t.string :instruction

      t.timestamps
    end
  end
end
