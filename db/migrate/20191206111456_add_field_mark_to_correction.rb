class AddFieldMarkToCorrection < ActiveRecord::Migration[6.0]
  def change
    add_column :corrections, :mark, :boolean, default: false
  end
end
