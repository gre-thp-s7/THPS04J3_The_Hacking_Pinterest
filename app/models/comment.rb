class Comment < ApplicationRecord
  belongs_to :pin, optional: true
  belongs_to :user, optional: true
end
