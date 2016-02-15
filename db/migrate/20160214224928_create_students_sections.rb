class CreateStudentsSections < ActiveRecord::Migration
  def change
    create_table :students_sections do |t|
      t.references :student, index: true
      t.references :section, index: true

      t.timestamps
    end
  end
end
