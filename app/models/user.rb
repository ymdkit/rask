class User < ApplicationRecord
    has_secure_password
    has_many :tasks, foreign_key: 'creator_id'
end
