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

require 'date'
require './author'
require './reader'
require './book'
require './order'
require './library'


readers = [reader1 = Reader.new('Вася', 'vasia@gmail.com', 'Бердянск', 'Потоцкого', '22'),
           reader2 = Reader.new('Петя', 'petia@gmail.com', 'Бердянск', 'Потоцкого', '22'),
           reader3 = Reader.new('Гоги', 'gogi@gmail.com', 'Бердянск', 'Потоцкого', '22')]

authors = [author1 = Author.new('Гомер', 'Скучный автор'),
           author2 = Author.new('Диккенс', 'Скучный автор'),
           author3 = Author.new('Джейн Остин', 'Скучный автор'),
           author4 = Author.new('Гете', 'Хороший автор'),
           author5 = Author.new('Ремарк', 'Скучный автор'),
           author6 = Author.new('Достоевский', 'Скучный автор'),
           author7 = Author.new('Толстой', 'Скучный автор'),
           author8 = Author.new('Маркес', 'Отличный автор'),
           author9 = Author.new('Кортасар', 'Неизвестный автор')]

books = [book1 = Book.new(author1, 'Одиссея'),
         book2 = Book.new(author2, 'Приключения Оливера Твиста'),
         book3 = Book.new(author3, 'Гордость и предубеждение'),
         book4 = Book.new(author4, 'Фауст'),
         book5 = Book.new(author5, 'Триумфальная арка'),
         book6 = Book.new(author6, 'Преступление и наказание'),
         book7 = Book.new(author7, 'Война и мир'),
         book8 = Book.new(author8, 'Сто лет одиночества'),
         book9 = Book.new(author9, 'Игра в классики')]

orders = [order1 = Order.new(book1, reader1),
          order2 = Order.new(book2, reader1),
          order3 = Order.new(book3, reader1),
          order4 = Order.new(book4, reader2),
          order5 = Order.new(book5, reader2),
          order6 = Order.new(book6, reader3),
          order7 = Order.new(book1, reader1)]

lib = Library.new(books, orders, readers, authors)

# dump = Marshal.dump(lib)
# newLib = Marshal.load(dump)

#puts lib.who_often_takes_the_book(book1)
#puts lib.most_popular_book
puts lib.people_ordered_most_three_popular_books