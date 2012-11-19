source "https://rubygems.org"
# interperter
ruby "1.9.3"
# web framework
gem "rails", "~> 3.2.8"
gem "simple_form", ">= 2.0.4"
# data layer
gem "mongoid", ">= 3.0.6"
# user managment
gem "devise", ">= 2.1.2"
gem "cancan", ">= 1.6.8"
gem "rolify", ">= 3.2.0"
# payment service
gem "stripe", ">= 1.7.4"
gem "stripe_event", ">= 0.4.0"
# ui layer
gem "jquery-rails"

group :assets do
  gem "sass-rails", "~> 3.2.3"
  gem "coffee-rails", "~> 3.2.1"
  gem "uglifier", ">= 1.0.3"

  gem "less-rails"
  gem "execjs"
  # gem 'therubyracer', :platforms => :ruby
end

group :development, :test do
  gem "rspec-rails", ">= 2.11.4"
  gem "email_spec", ">= 1.2.1"
  gem "mongoid-rspec", ">= 1.4.6"
  gem "database_cleaner", ">= 0.9.1"
  gem "capybara", ">= 1.1.2"  
  gem "factory_girl_rails", ">= 4.1.0"
  gem "cucumber-rails", ">= 1.3.0", :require => false  
  gem "launchy", ">= 2.1.2"
  gem "quiet_assets", ">= 1.0.1"

  gem "twitter-bootstrap-rails"
end

group :development do
  gem "pry"
  gem "pry-rails"
  gem "pry-debugger"
  gem "pry-doc"
  gem "pry-coolline"
  gem "pry-stack_explorer"
  gem "pry-exception_explorer"
  gem "pry-vterm_aliases"
  gem "pry-theme"
  gem "awesome_print"
end

group :production do
  gem "thin"
end
