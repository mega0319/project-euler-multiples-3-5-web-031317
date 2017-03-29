# Enter your object-oriented solution here!
class Multiples

  attr_accessor :limit

  def initialize(limit)
    @limit = limit
  end

  def collect_multiples
    array = (1...self.limit).to_a
    array.select do |num|
      num % 3 == 0 || num % 5 == 0
    end
  end

  def sum_multiples
    array = (1...self.limit).to_a
    magix = []
    array.each do |num|
      if num % 3 == 0 || num % 5 == 0
        magix.push(num)
      end
    end
    magix.inject do |sum, num|
      sum + num
    end
  end

end
