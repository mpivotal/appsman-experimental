class CreateSpaces < ActiveRecord::Migration[5.0]
  def change
    create_table :spaces do |t|
      t.string :name
      t.references :org, foreign_key: true

      t.timestamps
    end
  end
end
