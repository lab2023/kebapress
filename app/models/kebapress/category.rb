module Kebapress
  class Category < ActiveRecord::Base
  	has_many :posts
  	validates_associated :posts
  	validates :title, presence: true, uniqueness: true
  end
end
