# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  s = 0
  arr.each{ |a| s+=a}
  return s
end

def max_2_sum arr
  return arr.length==0 ? 0: (arr.length == 1 ? arr[0]: arr.max(2).sum)
end

def sum_to_n? arr, n
    if (arr.combination(2).find{ |a,b| a+b == n})
        return true
    else
        return false
    end
end
# Part 2

def hello(name)
    return "Hello, #{name}"
end

def starts_with_consonant? s
    return s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
    if s.length == 0
        return false
    end
    sum = 0;
    for i in 0..s.length-1
        if s[i] != '0' && s[i] != '1'
            return false
        end
        sum += ( s[i]=='1' ? 2**(s.length-1-i) : 0)
    end
    return sum%4 == 0
end

# Part 3

class BookInStock
    attr_accessor :isbn, :price

    def initialize (isbn,price)
        # Instance variables
        raise ArgumentError, 'Invalid Arguments' unless (isbn.length>0 && price > 0)
        @isbn = isbn
        @price = price
    end

    def price_as_string
        return "$" + ('%.2f' % @price.to_s)
    end

end
