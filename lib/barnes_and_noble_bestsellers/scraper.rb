class Scraper

  @@bn_url = 'https://www.barnesandnoble.com/'
  
  def self.scrape_books
    scrape_url = @@bn_url + 'b/books/_/N-1fZ29Z8q8'

    doc = Nokogiri::HTML(open(scrape_url))
    

    doc.css('.pb-s.mt-m.bd-bottom-disabled-gray.record').each do |book|
      
      title = book.css('h3 a').text.strip
      author = book.css('.product-shelf-author.contributors a').text.strip
      publish_date = book.css('span.text--small.publ-date').text.strip
      review_count = book.css('.review-count.product-shelf-reviews').text.strip
      rating = book.css('.product-shelf-ratings')[0]['aria-label']
      format = book.css('a.format').text.strip
      bn_price = book.css('span.current').text.strip
      og_price = book.css('span.previous').text.strip
      discount = book.css('p.discount').text.strip
      availability = book.css('div.availability-spacing').text.strip

      Book.new(title, author, publish_date, review_count, rating, format, bn_price, og_price, discount, availability)

    end 
  end

end 
