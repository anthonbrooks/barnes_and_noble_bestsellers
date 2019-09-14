# frozen_string_literal: true

# Gives a new book its attributes
# adds each new book to a list of all books
class Book
  attr_accessor :title, :author, :publish_date, :review_count,\
                :rating, :format, :bn_price,\
                :og_price, :discount, :availability
  @@all = []

  def initialize(attributes)
    attributes.each { |key, value| send("#{key}=", value) }
    @@all << self
  end

  def self.all
    @@all
  end
end
