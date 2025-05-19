class Post < ApplicationRecord
   belongs_to :creator, class_name: "User"
   has_many :editors
   has_many :editors, through: :editor, source: :user

end
