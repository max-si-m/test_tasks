module ConvertLettersCase
  def self.perform(string)
    string.split('').map do |str|
      str_tmp = str
      str == str_tmp.downcase ? str.upcase : str.downcase
    end.join
  end
end
