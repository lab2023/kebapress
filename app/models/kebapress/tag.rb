module Kebapress
  class Tag < ActiveRecord::Base
  	has_and_belongs_to_many :posts
  	validates :title, presence: true, uniqueness: true
  end
end
