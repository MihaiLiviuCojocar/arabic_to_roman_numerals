NUMERALS = {
  1    => "I",
  4    => "IV",
  5    => "V",
  9    => "IX",
  10   => "X",
  40   => "XL",
  50   => "L",
  90   => "XC",
  100  => "C",
  400  => "CD",
  500  => "D",
  900  => "DM",
  1000 => "M"
}
def get_closest_arabic_number_from_hash(number)
  closest_number = NUMERALS.sort_by{|key, value| key}.select{|arabic, roman| arabic <= number}.last
end

class Fixnum

  def to_romans
    solution = ''
    number = self
    while number > 0
      arabic, roman = get_closest_arabic_number_from_hash(number)
      solution << roman
      number = number - arabic
    end
      solution
  end

end

puts 90.to_romans
