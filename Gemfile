source 'https://rubygems.org'

ruby '3.2.2'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.1.5'

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '>= 5.0'

# Autenticação e autorização
gem 'devise'
gem 'pundit'

# API e Serialização
gem 'active_model_serializers'
gem 'jbuilder'

# Paginação
gem 'kaminari'

# Busca e filtros
gem 'ransack'

# Upload de imagens
gem 'carrierwave'
gem 'image_processing', '~> 1.2' # Para Active Storage

# Testes
group :development, :test do
  gem 'factory_bot_rails' # Fixtures replacement with a straightforward definition syntax
  gem 'faker'             # A library for generating fake data
  gem 'rspec-rails'       # RSpec for testing Rails applications
end

# Performance
gem 'bullet' # Help to kill N+1 queries and unused eager loading

# Documentação da API
gem 'rswag' # Seamlessly adds Swagger-based API documentation to Rails apps

# Outras ferramentas úteis
gem 'annotate'            # Add a comment summarizing the current schema to the top or bottom of each of your models
gem 'friendly_id'         # Slugging and permalink plugin for Active Record

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
# gem "jbuilder"

# Use Redis adapter to run Action Cable in production
# gem "redis", ">= 4.0.1"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[windows jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin Ajax possible
# gem "rack-cors"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri windows]
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end
