class Perso < ActiveRecord::Base
  belongs_to :user
  validates :fullname, :manga, :picture_link, :age, :profession, :skills, presence: true
  validates :buddy_name, presence: true,
                    if: [:buddy]
end
