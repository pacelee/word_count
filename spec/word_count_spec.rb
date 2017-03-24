require('rspec')
  require('word_count')

  describe('String#word_count') do
    it("peck should be found twice in the string") do
        expect("peck".word_count("If Peter Piper picked a peck of pickled peppers, where's the peck of pickled peppers Peter")).to(eq(2))
    end
    it("peck should be found twice in the string") do
        expect("peck".word_count("If Pepeckter Piper picked a peck of picpeckkled peppers, where's the peck of pickled peppers Peter")).to(eq(2))
    end
  end

  describe('String#word_anywhere') do
    it("cat should be found twice in the string'") do
        expect("cat".word_anywhere("I brought my cat to the catacombs")).to(eq(2))
    end
    it("hi should be found five times in the string") do
        expect("hi".word_anywhere("hellohihihihelloHihihill")).to(eq(5))
    end
  end
