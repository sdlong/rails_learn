xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Ruby on Rails Exchange Center"
    xml.description "A blog about software and chocolate"
    xml.link "http://rorec.herokuapp.com"

    for pages in @pages
      xml.item do
        xml.intro pages.intro
        xml.title pages.title
        xml.link pages.content
        xml.description pages.description
        xml.pubDate pages.created_at.to_s(:rfc822)
      end
    end
  end
end