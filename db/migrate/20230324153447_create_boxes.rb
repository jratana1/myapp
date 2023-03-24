class CreateBoxes < ActiveRecord::Migration[7.0]
  def change
    create_table :boxes do |t|
      t.uuid :id
      t.string :barcode
      t.datetime :status_change
      t.integer :status
      t.references :spec, null: false, foreign_key: true

      t.timestamps
    end
  end
end
