#!/usr/bin/ruby
# -*- coding: utf-8 -*-

# Library
	# Book: title, author
	# Order: book, reader, date
	# Reader: name, email, city, street, house
	# Author: name, biography
	# Library: books, orders, readers, authors

	# Write program that determines:
	# Who often takes the book
	# What is the most popular book
	# How many people ordered one of the three most popular books
	# Save all Library data to file(s)
	# Get all Library data from file(s)

class Book
	attr_accessor :title, :author
	def initialize(title = 'no title', author = 'no author')
		@title, @author = title, author
	end
end

class Order
  attr_accessor :book, :reader, :date
	def initialize(book, reader, date)
		@book, @reader, @date = book, reader, date
	end
end

class Order
  attr_accessor :book, :reader, :date
	def initialize(book, reader, date)
		@book, @reader, @date = book, reader, date
	end
end

class Reader
	def initialize(name, email, city, street, house)
		@name, @email, @city, @street, @house = name, email, city, street, house
	end
end

class Author
	def initialize(name, biography)
		@name, @biography = name, biography
	end
end

class Library
	def initialize(books, orders, readers, authors)
		@books, @orders, @readers, @authors = books, orders, readers, authors
	end
end