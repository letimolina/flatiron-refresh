# Your code goes here!
require "pry"
class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(words)
    matches = []
    words.each do |word|
      if word.split("").sort == self.word.split("").sort
        matches << word
      end
    end
    matches
  end
end
