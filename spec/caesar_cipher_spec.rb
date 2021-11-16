#spec/caesar_cipher_spec.rb
require './lib/main.rb'


describe Cipher do
    describe "#caesar_cipher" do
        it "returns a 5 letter encrypted word" do
            c = Cipher.new
            expect(c.caesar_cipher("hello", 5)).to eql("mjqqt")
        end

        it "returns an encrpyted word with key 24" do
            c = Cipher.new
            expect(c.caesar_cipher("hello", 24)).to eql("fcjjm")
        end

        it "returns 'Key outside of range' if key is not between " do
            c = Cipher.new
            expect(c.caesar_cipher("hello", 30)).to eql("Key outside of range")
        end
    end
end