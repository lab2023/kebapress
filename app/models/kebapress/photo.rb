module Kebapress
  class Photo < ActiveRecord::Base
    has_attached_file :image,
                      path: 'uploads/kebapress/images/:id/style/:id.:extension'
  end
end
