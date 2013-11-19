module Kebapress
  class Post < ActiveRecord::Base
    has_and_belongs_to_many :tags
    has_and_belongs_to_many :category

    validates :title, presence: true
    validates :body, presence: true
    validates :commentable, presence: true, inclusion: { in: [true, false] }
  end
end
