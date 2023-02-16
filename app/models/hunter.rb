class Hunter < ApplicationRecord
    has_many :posts_hunters
    has_many :posts, through: :post_hunters
end
