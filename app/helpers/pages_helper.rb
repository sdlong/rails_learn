# -*- encoding : utf-8 -*-
module PagesHelper
  def render_page_link_title(page)
    link_to(page.title_for_preview, page.title_for_preview, :class => "index-title")
  end

  def render_page_read_more_link(page)
    link_to("Read more &gt;", page_path(page), :class => "btn btn-success") 
  end

  def render_page_editable_link(page)

    ibutton("Edit", edit_page_path(page), :class => "bt btn-info", :iclass => "icon-pencil")
  end
end
