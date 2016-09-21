public
def is_prime?(num)  
      if num<2
        return false
      end
    for x in 2..num**0.5 do
        if num%x==0
            return false
        end
    end
    return true
end

def firstPrime(tempArr)
    tempArr.each do |temp|
      if is_prime?(temp)
        return temp
      end 
    end
    return "no primes"
end

x = [1,2,3,4,5,6,7]
arr = x.permutation.to_a
arr.reverse!
perms = []
arr.each do |num1|
  tempStr = ""
  num1.each do |digit|
    temp7 = digit.to_s
    tempStr<<temp7
  end
  perms<<tempStr.to_i
end
print firstPrime(perms)
