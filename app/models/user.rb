class User < ApplicationRecord
    has_many :tasks

    validates :user_id, presence: true, uniqueness: true
    has_secure_password

    # user_idに対して半角英数字とハイフン、アンダーバーのみを許可。
    validates :user_id, presence: true, format: { with: /\A[a-zA-Z0-9_-]+\z/, message: "半角英数字とハイフン(-)、アンダーバー(_)が使用できます。" }
  
    # passwordに対して8文字以上で半角英数字を使用可能。
    validates :password, presence: true, format: { with: /\A[a-z0-9]+{8}\z/i, message: "8文字以上で半角英数字を使用できます。" }
end
