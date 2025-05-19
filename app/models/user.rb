class User < ApplicationRecord
    has_many :posts, foreign_key: :creator_id
    has_many :editors
    has_many :edited_posts, through: :editor, source: :post
end
