require_relative '../lib/caesar_cipher'

describe "the caesar_cipher method" do
  it "should return correct lowercase letter based on the key" do
    expect(caesar_cipher("a",3)).to eq("d")
    expect(caesar_cipher("e",5)).to eq("j")
    expect(caesar_cipher("k",1)).to eq("l")
  end
  it "should return lowercase letter when the key goes beyond z" do
    expect(caesar_cipher("z",3)).to eq("c")
    expect(caesar_cipher("z",5)).to eq("e")
    expect(caesar_cipher("x",4)).to eq("b")
  end
  it "should return uppercase letter when the key goes beyond Z" do
    expect(caesar_cipher("Z",3)).to eq("C")
    expect(caesar_cipher("Z",5)).to eq("E")
    expect(caesar_cipher("X",4)).to eq("B")
  end
  it "should return uppercase/lowercase letters from prases based on key goes beyond" do
    expect(caesar_cipher("abc",3)).to eq("def")
    expect(caesar_cipher("hello",3)).to eq("khoor")
  end

end
