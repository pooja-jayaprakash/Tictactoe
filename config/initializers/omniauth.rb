OmniAuth.config.full_host = "http://localhost:3000"
 
Rails.application.config.middleware.use OmniAuth::Builder do
 provider :google_oauth2, '456377260159.apps.googleusercontent.com', 'TguUz7fIqfa1BslEbEHRYKhp', {:access_type => 'offline',:approval_prompt => '',:scope => 'https://www.googleapis.com/auth/userinfo.profile,https://www.google.com/m8/feeds'}
end