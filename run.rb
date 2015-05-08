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

books = [boook1 = Book.new(author1, 'Одиссея'),
         boook2 = Book.new(author2, 'Приключения Оливера Твиста'),
         boook3 = Book.new(author3, 'Гордость и предубеждение'),
         boook4 = Book.new(author4, 'Фауст'),
         boook5 = Book.new(author5, 'Триумфальная арка'),
         boook6 = Book.new(author6, 'Преступление и наказание'),
         boook7 = Book.new(author7, 'Война и мир'),
         boook8 = Book.new(author8, 'Сто лет одиночества'),
         boook9 = Book.new(author9, 'Игра в классики')]

orders = [order1 = Order.new(boook1, reader1),
          order1 = Order.new(boook2, reader1),
          order1 = Order.new(boook3, reader1),
          order1 = Order.new(boook4, reader2),
          order1 = Order.new(boook5, reader2),
          order1 = Order.new(boook6, reader3)]

lib = Library.new(books, orders, readers, authors)

# dump = Marshal.dump(lib)
# newLib = Marshal.load(dump)

lib.saveLib
newLib = Library.loadLib

puts newLib.inspect