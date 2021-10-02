class CreateSections < ActiveRecord::Migration[6.1]
  def change
    create_table :sections do |t|
      t.integer :year
      t.binary :semester
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
