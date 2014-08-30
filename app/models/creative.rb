class Creative < ActiveRecord::Base

  has_attached_file :image,
                    :bucket => 'creatad',
                    :storage => :s3
end
