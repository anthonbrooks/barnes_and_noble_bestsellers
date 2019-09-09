class Book

  attr_accessor :title, :author, :publish_date, :review_count, :rating, :format, :bn_price, :og_price, :discount, :availability

  @@all = []
  
  def initialize(title, author, publish_date, review_count, rating, format, bn_price, og_price, discount, availability)
    @title = title
    @author = author
    @publish_date = publish_date
    @review_count = review_count
    @rating = rating
    @format = format
    @bn_price = bn_price
    @og_price = og_price
    @discount = discount
    @availability = availability
    
    @@all << self
  end

  def self.all
    @@all
  end
  
end
