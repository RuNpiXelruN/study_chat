class CreateSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :subjects do |t|
      t.string :name
      t.text :description
      t.references :subjectable, polymorphic: true

      t.timestamps
    end
  end
end
