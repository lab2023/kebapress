module Kebapress
  class Category < ActiveRecord::Base
  	has_many :posts
  end
end
