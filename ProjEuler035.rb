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
primes = [3, 5, 7, 11, 13]
for x in 11..1000000 do
    if is_prime?(x)
        primes<<x
    end
    puts x
end
circulars = [2,3,5,7]
for x in 11..1000000 do
    circ=true
    current = x.to_s
    for y in 0...x.size
        newStr = "#{current[0...y]}#{current[y...current.size]}"
        newStr=newStr.to_i
        if !primes.include?(newStr)
            circ=false
        end
    end
    if circ
        circulars<<x
    end
    puts x
end
    puts circulars.size
    