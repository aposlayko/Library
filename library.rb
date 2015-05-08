class Library
  attr_reader :books, :orders, :readers, :authors

	def initialize(books, orders, readers, authors)
		@books, @orders, @readers, @authors = books, orders, readers, authors
  end

  def who_often_takes_the_book(book)

  end

  def most_popular_book

  end

  def people_ordered_most_three_popular_books

  end

  def saveLib(file = 'library.txt')
    dump = Marshal.dump(self)
    if File.write(file, dump)
      puts "Data saved"
    else
      puts "Errors in saving"
    end
  end

  def self.loadLib(file = 'library.txt')
    if File.exists?(file)
      puts "Loading done"
      Marshal.load(File.open(file))
    else
      puts "File not found - new library created"
      self.new(nil, nil, nil,nil)
    end
  end

end