class CreateCorrections < ActiveRecord::Migration[6.0]
  def change
    create_table :corrections do |t|
      t.text :body
      t.references :answer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
