OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '328959553941912', '23e3f88eb2c85004b85582b76119c2b8'
end