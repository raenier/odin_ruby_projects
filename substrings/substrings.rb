def substrings(sentence, dictionary)
  dictionary.reduce({}) do |result, substring|
    result[substring] = sentence.downcase.scan(substring.downcase).length
    result
  end
end
