class Creative < ActiveRecord::Base

  has_attached_file :image,
                    :bucket => 'creatad',
                    :storage => :s3,
                    :s3_credentials => {:access_key_id => "AKIAI6GDBDTYTYRJLWZA",
                                        :secret_access_key => "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"}
end
