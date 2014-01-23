# -*- encoding : utf-8 -*-
module PagesHelper
  def render_page_link_title(page)
    link_to(page.title_for_preview, page.content, :class => "index-title")
  end

  def render_page_editable_link(page)
    ibutton("Edit", edit_page_path(page), :class => "btn btn-info", :iclass => "icon-pencil")
  end

  def render_page_delete_link(page) 
    ibutton("Delete", page_path(page), :class => "btn btn-danger",remote: true, :iclass => "icon-remove", :method => :delete, data: { confirm: "Are you sure?" } )
  end

    def render_page_read_more_link(page)
    ibutton("Read more", page_path(page), :class => "btn btn-success", :iclass => "icon-hand-up") 
  end
end
