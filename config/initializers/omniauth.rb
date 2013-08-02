OmniAuth.config.full_host = "http://simpletictactoe.herokuapp.com"
 
Rails.application.config.middleware.use OmniAuth::Builder do
 provider :google, '562923144800-jufq3veql293al8979nqmvmm5nqpo1rf.apps.googleusercontent.com', 'H12l_iBjiDpUQuP-qbyA731c', {:approval_prompt => 'auto', :scope => 'https://www.googleapis.com/auth/userinfo.profile'}
end