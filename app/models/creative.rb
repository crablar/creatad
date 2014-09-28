class Creative < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image,
	                  :default_url => "missing.jpg",
	                  :bucket => 'creatad',
	                  :storage => :s3,
	                  :s3_credentials => {:access_key_id => "AKIAI6GDBDTYTYRJLWZA",
	                                      :secret_access_key => "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"}
	validates_attachment_content_type :image, :content_type => /image/
	before_save :extract_dimensions

	def sanitize_link
		if(self.link.starts_with? 'www.')
				self.link.prepend('http://')
		elsif(!self.link.starts_with? 'http://www.')
			self.link.prepend('http://www.')
		end
	end

	def extract_dimensions
		tempfile = image.queued_for_write[:original]
		if tempfile.nil?
			return false
		end
		geometry = Paperclip::Geometry.from_file(tempfile)
		self.width = geometry.width.to_i
		self.height = geometry.height.to_i
		if self.width == 300 and self.height == 250
			self.dimensions = 'box_creative'
		elsif self.width == 160 and self.height == 600
			self.dimensions = 'long_vertical_creative'
		elsif self.width == 728 and self.height == 90
			self.dimensions = 'long_horizontal_creative'
		else
			return false
		end
	end

end
