# frozen_string_literal: true

# creates the main interface for running the program
# also logic to use the program effectively
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

    puts ''
    puts 'Please select a book by number to view more information'

    @input = gets.chomp
    puts ''
    puts '###############'
    puts ''
    check_input
    puts ''
    puts '###############'
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
    answer = gets.chomp
    if %w[yes y].include?(answer)
      menu
    elsif %w[no n].include?(answer)
      exit
    else
      completed
    end
  end
end
