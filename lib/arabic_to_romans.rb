NUMERALS = {
  1000 => "M",
  500  => "D",
  100  => "C",
  50   => "L",
  10   => "X",
  9    => "IX",
  5    => "V",
  4    => "IV",
  1    => "I"
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

puts 2014.to_romans
