# frozen_string_literal: true

# CLI for running the program
class CLI
  def run
    puts ''
    puts 'Welcome to the Barnes and Noble Bestsellers Scraper!'
    puts ''
    puts 'Select a book by number to view more details.'
    puts ''
    Scraper.scrape_books
    menu
  end

  def menu
    Book.all.each_with_index do |book, index|
      puts "#{index + 1}. #{book.title}"
    end

    puts "\nPlease select a book by number to view more information"

    @input = gets.chomp
    puts "\n###############"
    puts ''
    check_input
    puts "\n###############"
    puts ''
    completed
  end

  def check_input
    if @input.to_i > Book.all.length || @input.to_i <= 0
      puts 'Input invalid'
    else
      book = Book.all[@input.to_i - 1]
      puts "Book Title: #{book.title}"
      puts "Author(s): #{book.author}"
      puts "Publication Date: #{book.publish_date}"
      puts "Review Count: #{book.review_count}"
      puts book.rating.to_s
      puts "Format: #{book.format}"
      puts "Barnes and Noble Price: #{book.bn_price}"
      puts "Original Price: #{book.og_price}"
      puts "Barnes and Noble Discount: #{book.discount}"
      puts "Availability: #{book.availability}"
    end
  end

  def completed
    puts "\nWould you like to continue? (y/n)"
    answer = gets.chomp.downcase
    if %w[yes y].include?(answer)
      menu
    elsif %w[no n].include?(answer)
      goodbye
    else
      completed
    end
  end

  def goodbye
    puts "\nGoodbye. I hope you found an interesting book."
    exit
  end
end
