module WordsSegmeting
  def self.perform(word, dicts)
    raise ArgumentError unless dicts.is_a?(Array)

    dicts.each { |dict| word.gsub!(/#{dict}/, '') }
    word.empty? ? true : false
  end
end
