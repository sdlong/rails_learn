# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

c1 = Page.new(:content => 'http://sdlong.logdown.com/', :intro => '本站長的blog', :messenge => '裡面有很多學習 Ruby & Ruby on Rails 的心得筆記與資訊', :page_tag => 'news', :user_id => '1')
c1.save!

c2 = Page.new(:content => 'http://rails-101.logdown.com/', :intro => '中文界 Ruby on Rails 最強實戰教材，沒有之一！', :messenge => '整本書破關後，您將擁有 Ruby on Rails 的業界裡，所必備的基礎能力！', :page_tag => 'news', :user_id => '1')
c2.save!

c3 = Page.new(:content => 'http://railstutorial-china.org/', :intro => '本站長的blog', :messenge => '國外的經典教材Ruby on Rails Tutorial的中文版', :page_tag => 'news', :user_id => '1')
c3.save!

c4 = Page.new(:content => 'http://railsforzombies.org/', :intro => 'Code School的 Rails 學習教材', :page_tag => 'news', :user_id => '1')
c4.save!

c5 = Page.new(:content => 'https://github.com/sdlong/rails_learn', :intro => '本站原始碼位置', :page_tag => 'news', :user_id => '1')
c5.save!

c6 = Page.new(:content => 'http://ihower.tw/rails3/', :intro => '超實用的 Rails 工具書!', :page_tag => 'news', :user_id => '1')
c6.save!