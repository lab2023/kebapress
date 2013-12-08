module Kebapress
  class Post < ActiveRecord::Base
    scope :published, -> { where(published: true) }
    has_and_belongs_to_many :tags
    has_and_belongs_to_many :categories

    validates :title, presence: true
    validates :body, presence: true
    validates :published, inclusion: { in: [true, false] }
    #validates :commentable, presence: true, inclusion: { in: [true, false] }
  end
end
