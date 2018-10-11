class Comment < ActiveRecord::Base
  belongs_to :posts
  belongs_to :users
  validates :contents, presence: true
  validates :post_id, presence: true
  validates :user_id, presence: true
end
