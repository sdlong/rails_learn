class Link < ActiveRecord::Base

after_create :update_from_embedly
 
 
def update_from_embedly
 
    link = self
  
 
    link.title             =  [:title]
    link.author_name       =  [:author_name]
    link.author_url        =  [:author_url]
    provider_name     =  [:provider_name]
    provider_url      =  [:provider_url]
    link.description       =  [:description]
    link.thumbnail_url     =  [:thumbnail_url]
    link.thumbnail_width   =  [:thumbnail_width]
    link.thumbnail_height  =  [:thumbnail_height]
    link.html              =  [:html]
    link.width             =  [:width]
    link.height            =  [:height]

  end
end
