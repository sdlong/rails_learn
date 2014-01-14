# -*- encoding : utf-8 -*-
module PagesHelper
  def render_page_link_title(page)
    link_to(page.title_for_preview, page.title_for_preview, :class => "index-title")
  end

end
