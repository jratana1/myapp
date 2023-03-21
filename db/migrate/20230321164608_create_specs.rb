class CreateSpecs < ActiveRecord::Migration[7.0]
  def change
    create_table :specs do |t|
      t.string :name
      t.datetime :date_completed
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
