class Author
  attr_reader :name, :books
  @@all = []

  def initialize(name)
    @name, @books = name, []
    @@all << self
  end

  def write_book(title, word_count)
    book = Book.new(title, word_count)
    book.author = self
    @books << book
  end

  def total_words
    self.books.sum(&:word_count)
  end

  def self.all
    @@all
  end

  def self.most_words
    self.all.max_by(&:total_words)
  end
end
