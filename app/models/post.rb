class Post < ApplicationRecord
validates :body, presence: true, length: { maximum: 5000, minimum: 3 }
validates :author, presence: true, length: { maximum: 50, minimum: 3 }
end
