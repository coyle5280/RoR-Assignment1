class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.references :course, index: true
      t.references :professor, index: true
      t.integer :number
      t.string :location
      t.time :sectionTime

      t.timestamps
    end
  end
end
