class User < ApplicationRecord
    has_many :tasks, foreign_key: 'creator_id'
    has_many :projects

    def User.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                 BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
    end

    def self.create_with_omniauth(auth)
        create! do |user|
            user.provider = auth["provider"]
            user.uid      = auth["uid"]

            info = auth["info"]
            user.name        = info["name"]
            user.screen_name = info["nickname"]
            user.avatar_url  = info["image"]
        end
    end
end
