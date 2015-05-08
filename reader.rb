class Reader
  @@count = 0
  def initialize(name, email, city, street, house)
    @name, @email, @city, @street, @house = name, email, city, street, house
    @@count+=1
  end
end