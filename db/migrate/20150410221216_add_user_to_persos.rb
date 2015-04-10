class AddUserToPersos < ActiveRecord::Migration
  def change
    add_reference :persos, :user, index: true
    add_foreign_key :persos, :users
  end
end
