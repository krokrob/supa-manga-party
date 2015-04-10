class AddPersoToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :perso, index: true
  end
end
