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

class Order
  @@count = 0
  attr_accessor :book, :reader, :date
	def initialize(book, reader, date)
		@book, @reader, @date = book, reader, date
    @@count+=1
	end
end

class Reader
  @@count = 0
	def initialize(name, email, city, street, house)
		@name, @email, @city, @street, @house = name, email, city, street, house
    @@count+=1
	end
end

class Author
  @@count = 0
	def initialize(name, biography)
		@name, @biography = name, biography
    @@count+=1
	end
end

reader1 = Reader.new('Вася', 'vasia@gmail.com', 'Бердянск', 'Потоцкого', '22')
reader2 = Reader.new('Петя', 'petia@gmail.com', 'Бердянск', 'Потоцкого', '22')
reader3 = Reader.new('Гоги', 'gogi@gmail.com', 'Бердянск', 'Потоцкого', '22')

author1 = Author.new('Гомер', 'Скучный автор')
author2 = Author.new('Диккенс', 'Скучный автор')
author3 = Author.new('Джейн Остин', 'Скучный автор')
author4 = Author.new('Гете', 'Хороший автор')
author5 = Author.new('Ремарк', 'Скучный автор')
author6 = Author.new('Достоевский', 'Скучный автор')
author7 = Author.new('Толстой', 'Скучный автор')
author8 = Author.new('Маркес', 'Отличный автор')
author9 = Author.new('Кортасар', 'Неизвестный автор')

boook1 = Book.new(author1, 'Одиссея')
boook2 = Book.new(author2, 'Приключения Оливера Твиста')
boook3 = Book.new(author3, 'Гордость и предубеждение')
boook4 = Book.new(author4, 'Фауст')
boook5 = Book.new(author5, 'Триумфальная арка')
boook6 = Book.new(author6, 'Преступление и наказание')
boook7 = Book.new(author7, 'Война и мир')
boook8 = Book.new(author8, 'Сто лет одиночества')
boook9 = Book.new(author9, 'Игра в классики')

class Library
	def initialize(books, orders, readers, authors)
		@books, @orders, @readers, @authors = books, orders, readers, authors
	end
end