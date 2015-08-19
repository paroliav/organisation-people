class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.belongs_to :organisation, index: true
      t.integer :assessment_count

      t.timestamps null: false
    end
  end
end
