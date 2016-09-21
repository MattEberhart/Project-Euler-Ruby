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
