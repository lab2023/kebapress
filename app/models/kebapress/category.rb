module Kebapress
  class Category < ActiveRecord::Base
  	has_and_belongs_to_many :posts
  	validates :title, presence: true, uniqueness: true
  end
end
