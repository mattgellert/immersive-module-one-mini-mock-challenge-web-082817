class Book
  attr_accessor :author
  attr_reader :title, :word_count

  @@all = []

  def initialize(title, word_count)
    @title, @word_count = title, word_count
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_title(book_title)
    if self.all.include?(book_title) == false
      begin
        raise FindTitleError
      rescue FindTitleError => error
        puts error.message
      end
    end
    self.all.find{|book| book.title == book_title}
  end

  def self.select_by_author(book_author)
    self.all.select{|book| book.author.name == book_author}
  end

  class FindTitleError < StandardError
    def message
      "There are no books with that title."
    end
  end
end
