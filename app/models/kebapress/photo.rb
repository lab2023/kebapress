module Kebapress
  class Photo < ActiveRecord::Base
    has_attached_file :image
  end
end
