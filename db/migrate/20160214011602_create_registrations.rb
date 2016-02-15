class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.references :student, index: true
      t.references :section, index: true

      t.timestamps
    end
  end
end
