class CreateSectionsStudents < ActiveRecord::Migration
  def change
    create_table :sections_students do |t|
      t.references :section, index: true
      t.references :student, index: true

      t.timestamps
    end
  end
end
