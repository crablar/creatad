class Ad < ActiveRecord::Base

  has_attached_file :image,
                    :bucket => 'creatad',
                    :storage => :s3,
                    :s3_credentials => {:access_key_id => "AKIAI2L7F6TGFDKXNUDQ",
                                        :secret_access_key => "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"}
end
