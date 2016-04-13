module ConvertLettersCase
  def self.perform(string)
    string.split('').map do |str|
      str[/[a-z]/] ? str.upcase : str.downcase
    end.join
  end
end
