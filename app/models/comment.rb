class Comment < ActiveRecord::Base
  belongs_to :posts
  belongs_to :users
  validates :contents, presence: true, length: { maximum: 500 }
  validates :post_id, presence: true
  validates :user_id, presence: true
end
