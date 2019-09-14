# frozen_string_literal: true

# gets html from Barnes & Noble
# creates a new Book object for each book in the bestseller list
class Scraper
  @bn_url = 'https://www.barnesandnoble.com/'

  def self.scrape_books
    scrape_url = @bn_url + 'b/books/_/N-1fZ29Z8q8'

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

      book_attributes = { title: title, author: author,\
                          publish_date: publish_date, review_count: review_count,\
                          rating: rating, format: format,\
                          bn_price: bn_price, og_price: og_price,\
                          discount: discount, availability: availability }

      Book.new(book_attributes)
    end
  end
end
