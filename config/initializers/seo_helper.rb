# -*- encoding : utf-8 -*-

# -*- encoding : utf-8 -*-
SeoHelper.configure do |config|
  config.skip_blank               = false
  config.site_name                = "RoR.E.C"
  config.default_page_description = "Ruby on Rails Exchange Center 致力成為用RoR開發網站的技術資訊與資源交流平台"
  config.default_page_keywords    = "PAGE_KEYWORDS"

  config.site_name_formatter  = lambda { |title, site_name|   "#{title} « #{site_name}".html_safe }
  config.pagination_formatter = lambda { |title, page_number| "#{title} - Page No.#{page_number}" }

end
