OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, 1502238313353368, '8a7a8d38f5ee6fd9b12b4b19b11988b8'
end