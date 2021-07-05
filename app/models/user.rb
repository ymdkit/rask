class User < ApplicationRecord
    has_secure_password
    has_many :tasks, foreign_key: 'creator_id'
    has_many :projects

    def User.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                 BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
    end
end
