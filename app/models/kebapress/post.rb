module Kebapress
  class Post < ActiveRecord::Base
    scope :published, -> { where(published: true) }
    scope :uncategorized, -> { includes(:categories).where(kebapress_categories: { id: nil })}

    #has_attached_file :image, styles: { small: '150x150>' },
    #                  url: '/assets/kebapress/posts/:id/:style/:basename.:extension',
    #                  path: ':rails_root/public/assets/kebapress/images/posts/:id/:style/:basename.:extension'

    #validates_attachment_presence :image
    #validates_attachment_size :image, less_than: 5.megabytes
    #validates_attachment_content_type :image, content_type: ['image/jpeg', 'image/png']

    has_and_belongs_to_many :tags
    has_and_belongs_to_many :categories
    belongs_to :admin, class_name: 'Admin', foreign_key: 'author_id'

    validates :title, presence: true
    validates :body, presence: true
    validates :published, inclusion: { in: [true, false] }
    validates :commentable, inclusion: { in: [true, false] }

    def tag_list=(tags)
      self.tags.clear
      tags.split(',').each do |tag|
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
