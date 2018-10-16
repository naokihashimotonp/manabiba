class User < ActiveRecord::Base
  # 1userは複数のいいねを持ちうる。
  has_many :likes, dependent: :destroy
  # 1userは複数の投稿を持ちうる
  has_many :posts
  # 1userは複数のコメントを持ちうる
  has_many :comments
  # 一般的なメールアドレスのフォーマットチェック
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  # パスワードのフォーマットチェック

end
