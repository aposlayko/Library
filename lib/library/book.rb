module Library
  class Book
    @@count = 0
    attr_accessor :title, :author
    def initialize(author = Author.new('unknown author', 'undefined biography'), title = 'no title')
      if author.is_a? Author
        @title, @author = title, author
        @@count+=1
      end
    end
    def self.count
      @@count
    end
  end
end