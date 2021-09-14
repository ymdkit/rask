Rails.application.config.middleware.use OmniAuth::Builder do
  provider :githubteammember,
           ENV['GITHUB_CLIENT_ID'],
           ENV['GITHUB_CLIENT_SECRET'],
           scope: 'read:org',
           teams: {
             "active_member?" => ENV['OAUTH_GITHUB_ALLOWED_TEAM_ID']
           },
           name: 'github'

end
