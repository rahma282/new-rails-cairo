class Post < ApplicationRecord
   belongs_to :creator, class_name: "User"
   has_many :editors
   has_many :editors, through: :editors, source: :user

end
