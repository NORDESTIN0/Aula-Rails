class Post < ApplicationRecord
    belongs_to :mining_type, optional: true
    belongs_to :hunter
end
