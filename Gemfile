source 'http://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group  :development  do 
  gem 'sqlite3' ,  '1.3.8' 
  gem "magic_encoding" # 解決 Rails 中文顯示問題
  gem "annotate" # 在 Model 裡顯示對應的資料庫設定
  gem "letter_opener" # 預覽發送的 Mail 內容
  gem "better_errors", "~> 0.9.0" #錯誤訊息幫手
  gem 'meta_request' # 查看 log @ chrome 神器
end

#for heroku
group  :production  do 
  gem  'pg' ,  '0.15.1' 
  gem  'rails_12factor' ,  '0.0.2' 
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

# 以下是自己添加的

# 幫助表單輸入用
gem "simple_form", "~> 3.0.0.rc" 

gem "seo_helper"

# CSS 套件
gem "susy"
gem 'compass', '>= 0.12.2'
gem 'compass-rails', '>= 1.0.3'
gem "bootstrap_helper", ">= 4.2.2.1"
gem "anjlab-bootstrap-rails", "2.3.1.2", :require => "bootstrap-rails"

# 身份驗證功能
gem "devise", "~> 3.2.2"
gem "omniauth"
gem "omniauth-facebook" 
gem "auto-facebook", "0.42"

# embedly for jQuery Preview
gem "embedly", "~> 1.8.0"

gem "settingslogic", "~> 2.0.9"
