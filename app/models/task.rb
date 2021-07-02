class Task < ApplicationRecord
  belongs_to :user, foreign_key: 'creator_id'
end
