if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      provider: 'AWS',
      region: 'ap-northeast-1', # 問題箇所
      aws_access_key_id: 'AKIAWHJRJMVZ7QEBZUYT',
      aws_secret_access_key: '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'
    }
    config.fog_directory = 'imamaki-video'
    config.cache_storage = :fog
  end
end