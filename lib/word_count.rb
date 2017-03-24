class String
  define_method(:word_count) do |testcase|
    counter = 0
    word = self
    sentence = testcase.split(" ")
    sentence.each do |instance|
      if word == instance
        counter += 1
      end
    end
    return counter
  end

  define_method(:word_anywhere) do |testcase|
    counter = 0
    word = self.length
    while testcase.length > 0
      if self == testcase.slice(0, word)
        counter += 1
        testcase.slice!(0)
      else
        testcase.slice!(0)
      end
    end
    return counter
  end
end
