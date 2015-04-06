class CreatePersos < ActiveRecord::Migration
  def change
    create_table :persos do |t|
      t.string :fullname
      t.integer :age
      t.string :manga
      t.string :profession
      t.text :skills
      t.boolean :human
      t.boolean :buddy, default: false
      t.string :buddy_name
      t.timestamps null: false
    end
  end
end
