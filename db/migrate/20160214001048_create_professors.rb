class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.string :name
      t.references :student, index: true
      t.string :office

      t.timestamps
    end
  end
end
