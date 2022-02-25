class Post < ApplicationRecord
    has_many :comments, dependent: :destroy
    
    acts_as_votable
    has_one_attached :image, dependent: :destroy
    validates :title, :image, presence: true

    after_update_commit {
        broadcast_update
    }
end
