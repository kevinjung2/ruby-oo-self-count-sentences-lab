require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    # self.include?(".") ? self.split(".").map {|str| str.split("?")}.map {|str| str.map{|str| str.split("!")}}.flatten.delete_if {|str| str == "" || str == " "}.length : 0
    self.include?("?" || "!" || ".") ? self.split(/[.?!]/).delete_if{|str| str == "" || str == " "}.length : 0
  end
end
["This, well, is a sentence.", "This is too!! And so is this, I think? Woo"]
