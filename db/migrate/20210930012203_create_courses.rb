class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :prefix
      t.integer :number
      t.text :description
      t.references :teacher, foreign_key: true

      t.timestamps
    end
  end
end
