class AddPictureLinkToPersos < ActiveRecord::Migration
  def change
    add_column :persos, :picture_link, :string
  end
end
