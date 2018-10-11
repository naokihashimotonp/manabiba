class Post < ActiveRecord::Base
  # 一人のユーザーは複数の投稿を持ちうる
  belongs_to :user
  # 一つの投稿は複数のコメントを持ちうる
  has_many :comments
  # 一つの投稿は複数のいいねを持ちうる
  has_many :likes, dependent: :destroy
  is_impressionable
  validates :contents, presence: true
  validates :user_id, presence: true

  # 検索のためのメソッド
  def self.search(search)
    Post.where(["contents LIKE ?","%#{search}%"])
  end
  # ユーザーと投稿といいねの紐づけ
  def like_user(id)
    likes.find_by(user_id: id)
  end

end
