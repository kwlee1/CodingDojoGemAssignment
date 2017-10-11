RSpec.describe Stringer do
  it "has a version number" do
    expect(Stringer::VERSION).not_to be nil
  end
  it "concatenates undefined number of strings with a space" do 
    expect(Stringer.spacify "Oscar", "Vazquez", "Zweig", "Olasaba", "Hernandez", "Ricardo", "Mendoza").to eq("Oscar Vazquez Zweig Olasaba Hernandez Ricardo Mendoza")
  end
  it "minifies a string depending on input string and length" do
    expect(Stringer.minify("Hello, I'm learning how to create a gem", 10)).to eq("Hello, I'm...")
    expect(Stringer.minify("Hello",10)).to eq("Hello")
  end 
  it "iterates over a string and replaces each instance a word with a replacement word" do
    expect(Stringer.replacify("I can't do this", "can't", "can")).to eq("I can do this")
  end
  it "iterates over a string and returns an array with each word" do 
    expect(Stringer.tokenize("Hello world!")).to eq(["Hello","world!"])
  end 
  it "removes from a string the specified word" do 
    expect(Stringer.removify("I'm not a developer","not")).to eq("I'm a developer")
  end 
end
