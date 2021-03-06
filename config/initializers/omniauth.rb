OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, SECRETS_CONFIG['twitter_key'], SECRETS_CONFIG['twitter_secret']
  provider :identity, :fields => [:email, :nickname], on_failed_registration: lambda { |env|
    IdentitiesController.action(:new).call(env)
  }
  provider :github, SECRETS_CONFIG['github_key'], SECRETS_CONFIG['github_secret']
end
