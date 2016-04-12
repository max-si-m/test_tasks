module NumberPrinting
  def self.perform(from = 1, to = 100)
    (from..to).map do |n|
      value_str = ''
      value_str << 'Hi' if (n % 3).zero?
      value_str << 'By' if (n % 5).zero?

      value_str.empty? ? n : value_str
    end
  end
end
