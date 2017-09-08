require 'pry'
require_relative './book'
require_relative './author'


author1 = Author.new("Matt")
author1.write_book("Matt's first book", 100)
author1.write_book("Matt's second book", 200)
author2 = Author.new("Shanie")
author2.write_book("Shanie's first book", 101)
author2.write_book("Shanie's second book", 202)

binding.pry
