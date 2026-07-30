source "https://rubygems.org"

ruby file: ".tool-versions"

# Full-stack web framework [https://rubyonrails.org]
gem "rails", "~> 8.1.3"

# The modern asset pipeline for Rails [https://github.com/rails/propshaft]
gem "propshaft"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.6"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 7.0"

# Bundle JavaScript and CSS with Vite [https://vite-ruby.netlify.app]
gem "vite_rails"

# Build reusable, testable & encapsulated view components [https://viewcomponent.org]
gem "view_component"

# Rich text editor for Action Text, built on Lexical [https://github.com/basecamp/lexxy]
gem "lexxy"

# Authentication
gem "omniauth"
gem "omniauth-rails_csrf_protection"
gem "omniauth-google-oauth2"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "image_processing", "~> 2.0"

# HTTP asset caching/compression and X-Sendfile acceleration for Puma [https://github.com/basecamp/thruster]
gem "thruster", require: false

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"

  # Audits gems for known security defects (use config/bundler-audit.yml to ignore issues)
  gem "bundler-audit", require: false

  # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  gem "brakeman", require: false

  # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase]
  gem "rubocop-rails-omakase", require: false

  gem "rspec-rails", "~> 8.0"

  gem "factory_bot_rails"
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"
end
