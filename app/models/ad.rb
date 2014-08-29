class Ad < ActiveRecord::Base

  has_attached_file :image,
  :path => ":rails_root/public/system/:attachment/:id/:basename_:style.:extension",
  :url => "/system/:attachment/:id/:basename_:style.:extension"

end
