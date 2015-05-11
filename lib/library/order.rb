module Library
	class Order
	  @@count = 0
	  attr_accessor :book, :reader, :date
	  def initialize(book, reader)
	    @book, @reader, @date = book, reader
	    @date = Date.new
	    @@count+=1
	  end
	end
end