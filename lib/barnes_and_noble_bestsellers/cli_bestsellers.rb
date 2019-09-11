class CLI
  
  def run
    puts ""
    puts "Welcome to the Barnes and Noble Bestsellers Scraper!"
    puts ""
    puts "Select a book by number to view more details."
    puts ""
    Scraper.scrape_books
    menu
  end

  def menu
    Book.all.each_with_index do |book, index|
      puts "#{index + 1}. #{book.title}"
    end

    puts ""
    puts "Please select a book by number to view more information"

    input = gets.chomp

    if input.to_i > Book.all.length || input.to_i <= 0
      puts ""
      puts "###############"
      puts ""
      puts "Input invalid"
      puts ""
      puts "###############"
      puts ""
      continue?
    else
      book = Book.all[input.to_i - 1]
      puts ""
      puts "###############"
      puts ""
      puts "Book Title: #{book.title}"
      puts "Author(s): #{book.author}"
      puts "Publication Date: #{book.publish_date}"
      puts "Review Count: #{book.review_count}"
      puts "#{book.rating}"
      puts "Format: #{book.format}"
      puts "Barnes and Noble Price: #{book.bn_price}"
      puts "Original Price: #{book.og_price}"
      puts "Barnes and Noble Discount: #{book.discount}"
      puts "Availability: #{book.availability}"
      puts ""
      puts "###############"
      puts ""
      continue?
    end
    
  end

  def continue?
    puts ""
    puts "Would you like to continue? (y/n)"
    puts ""
    answer = gets.chomp
    while true
      if answer == 'yes' || answer == 'y'
        menu
      elsif answer == 'no' || answer == 'n'
        exit
      else
        continue?
      end
    end
  end

end
