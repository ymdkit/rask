setup:
	bundle install --path=vendor/bundle
	bundle exec rails webpacker:install
	bundle exec rails db:migrate