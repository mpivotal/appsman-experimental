class CreateApps < ActiveRecord::Migration[5.0]
  def change
    create_table :apps do |t|
      t.string :application_name
      t.text :application_uris
      t.string :state
      t.text :limits
      t.string :details
      t.references :space, foreign_key: true
      t.string :buildpack
      t.datetime :last_uploaded
      t.text :services

      t.timestamps
    end
  end
end
