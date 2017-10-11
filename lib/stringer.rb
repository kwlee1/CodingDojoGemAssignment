require "stringer/version"

module Stringer
  def self.spacify *strings
    strings.join(" ")
  end
  def self.minify text, len
    if text.length < len 
      return text 
    else 
      return "#{text[0...len]}..."
    end 
  end 
  def self.replacify string, word1, word2 
    newstring = string.split(" ")
    newstring.map! do |elem|
      if elem == word1 
        word2 
      else 
        elem 
      end 
    end 
    return newstring.join(" ")
  end 
  def self.tokenize string 
    return string.split (" ")
  end 
  def self.removify string, word 
    newstring = string.split(" ")
    newstring.reject! { |elem| elem == word}
    return newstring.join(" ")
  end 
end
