class CreateBoxes < ActiveRecord::Migration[7.0]
  def change
    create_table :boxes, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.string :barcode
      t.datetime :status_change
      t.integer :status, default: 0
      t.references :spec, null: false, foreign_key: true

      t.timestamps
    end
  end
end
