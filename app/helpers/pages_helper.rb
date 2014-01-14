# -*- encoding : utf-8 -*-
module PagesHelper
  def render_page_link_title(page)
    if page.title.blank?
      # TODO : to read blank/present
      link_to(page.content, page.content, :class => "index-title")
    else
      link_to(page.title, page.title, :class => "index-title")
    end

  end


end
