require 'open-uri'

Rails.logger.info('---Collect Tabs Start---')

max_tabs = 30000
url = "https://www.harptabs.com/songlist.php?DisplayBy=&MaxFields=#{max_tabs}"
charset = ""

Rails.logger.info("URL Open:#{url}")

html = open(url) do |f|
  charset = f.charset
  f.read
end
Rails.logger.info('URL Open Done.')

doc = Nokogiri::HTML.parse(html, nil, charset)
tds = doc.xpath("//td")

p ""
tds.each do |td|
  p td
end

Rails.logger.info('Doc Parse Done.')

