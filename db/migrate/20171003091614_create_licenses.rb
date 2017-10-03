class CreateLicenses < ActiveRecord::Migration[5.1]
  def change
    create_table :licenses do |t|
      t.references :offer, foreign_key: true
      t.string :license_key

      t.timestamps
    end
  end
end
