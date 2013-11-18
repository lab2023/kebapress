module Kebapress
  class Post < ActiveRecord::Base
    belongs_to :category
    has_and_belongs_to_many :tags
    around_save :set_published

    validates :title, presence: true
    validates :body, presence: true
    validates :commentable, presence: true, inclusion: { in: [true, false] }
    validates :category, presence: true

    protected
    	def set_published
    		published = (published_at != nil)
    	end
  end
end
