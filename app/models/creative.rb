class Creative < ActiveRecord::Base

  has_attached_file :image,
                    :default_url => "missing.jpg",
                    :bucket => 'creatad',
                    :storage => :s3,
                    :s3_credentials => {:access_key_id => "AKIAI6GDBDTYTYRJLWZA",
                                        :secret_access_key => "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"},
                    :convert_options => {
                        :thumb    => '-set colorspace sRGB -strip',
                        :preview  => '-set colorspace sRGB -strip',
                        :large    => '-set colorspace sRGB -strip',
                        :retina   => '-set colorspace sRGB -strip -sharpen 0x0.5'
                    }
  validates_attachment_content_type :image, :content_type => /image/
end
