class AddUserToCorrection < ActiveRecord::Migration[6.0]
  def change
    add_reference :corrections, :user, foreign_key: true
  end
end
