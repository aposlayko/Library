class Library
  attr_reader :books, :orders, :readers, :authors

	def initialize(books, orders, readers, authors)
		@books, @orders, @readers, @authors = books, orders, readers, authors
  end

  def who_often_takes_the_book(book)
    ords = @orders.select{|order| order.book.title == book.title}
    rdrs = ords.inject(Hash.new{0}){|hash, ord| hash[ord.reader] += 1; hash}
    result = rdrs.max_by{|key, value| value}
    result[0]
  end

  def most_popular_book
    books = @orders.inject(Hash.new{0}){|hash, ord| hash[ord.book] += 1; hash}
    result = books.max_by{|key, value| value}
    result[0]
  end

  def people_ordered_most_three_popular_books
    books = @orders.inject(Hash.new{0}){|hash, ord| hash[ord.book] += 1; hash}
    sorted = books.sort_by{|key, value| value}.reverse[0..2]
    sorted
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