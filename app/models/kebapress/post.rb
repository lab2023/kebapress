module Kebapress
  class Post < ActiveRecord::Base
    belongs_to :category
    has_and_belongs_to_many :tags

    validates :title, presence: true
    validates :body, presence: true
    validates :commentable, presence: true, inclusion: { in: [true, false] }
    validates :category, presence: true

  end
end
