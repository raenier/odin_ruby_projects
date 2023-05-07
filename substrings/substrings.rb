def substrings(sentence, dictionary)
  dictionary.reduce({}) do |result, substring|
    next unless sentence.downcase.include?(substring.downcase)

    result[substring] =
      sentence.split(' ').reduce(0) do |ctr, word|
        word.include?(substring) ? ctr += 1 : ctr
      end
    result
  end
end
