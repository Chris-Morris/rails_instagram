class Comment < ApplicationRecord
  belongs_to :post
  # belongs_to :user

  after_create_commit { broadcast_prepend_to(post, :comments) }
end
