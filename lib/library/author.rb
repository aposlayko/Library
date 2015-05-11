module Library
	class Author
	  @@count = 0
	  def initialize(name, biography)
	    @name, @biography = name, biography
	    @@count+=1
	  end
	end
end