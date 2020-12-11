require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  if Rails.env.production? || Rails.env.development? # 開発中もs3使う
    config.storage :fog
    config.fog_provider = 'fog/aws'
    config.fog_directory  = 'imamaki-app'
    config.asset_host = 'https://s3.amazonaws.com/imamaki-app'
    # NOTE: AWS側の設定を変えなくても、この１行の設定でアップロードできた
    config.fog_public = false # ←コレ
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: 'AKIAWHJRJMVZ7QEBZUYT',
      aws_secret_access_key: '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',
      region: 'us-east-2',
      # path_style: true
    }
  else
    config.storage :file
    config.enable_processing = false if Rails.env.test?
  end
end