# Enter your procedural solution here!
def collect_multiples(n)
  array = (1...n).to_a
  array.select do |num|
    num % 3 == 0 || num % 5 == 0
  end
end


def sum_multiples(n)
  array = (1...n).to_a
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
