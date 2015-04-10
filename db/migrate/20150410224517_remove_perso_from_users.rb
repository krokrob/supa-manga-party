class RemovePersoFromUsers < ActiveRecord::Migration
  def change
    remove_reference :users, :perso, index: true
  end
end
