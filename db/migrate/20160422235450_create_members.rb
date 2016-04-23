class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :email
      t.references :org, foreign_key: true
      t.references :space, foreign_key: true
      t.text :roles

      t.timestamps
    end
  end
end
