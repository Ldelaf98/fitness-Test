Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :google_oauth2, '557141664256-8ajtnj00ngcki9ple0ituripabbtkgts.apps.googleusercontent.com', 'AgLwZyuLicEtqEvQiDxHgxoS', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}

end