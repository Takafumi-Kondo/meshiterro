class PostComment < ApplicationRecord
#コメントはUser,PostImageもひとつなので
	belongs_to :user
	belongs_to :post_image
end
