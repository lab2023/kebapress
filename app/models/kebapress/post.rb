module Kebapress
  class Post < ActiveRecord::Base
    scope :published, -> { where(published: true) }
    scope :uncategorized, -> { includes(:categories).where(kebapress_categories: { id: nil })}

    has_and_belongs_to_many :tags
    has_and_belongs_to_many :categories
    belongs_to :admin, class_name: 'Admin', foreign_key: 'author_id'

    validates :title, presence: true
    validates :body, presence: true
    validates :published, inclusion: { in: [true, false] }
    validates :commentable, inclusion: { in: [true, false] }

    def tag_list=(tags)
      self.tags.clear
      tags.split(",").each do |tag|
        self.tags << Kebapress::Tag.find_or_create_by_title(tag.strip)
      end
    end

    def tag_list
      self.tags.collect do |tag|
        tag.title
      end.join(', ')
    end
  end
end
