primes = [3, 5, 7, 11, 13]
tester = [2,3,4,5,6,7,8,9]
trunc = []
for x in 11..999999999999 do        #list of primes
    prime = true
    tester.each do |test|
        if x%test==0
            prime = false
        end
    end
    if prime
        primes<<x
        tester<<x
    end
end

primes.each do |p|#determing truncatable right to left by division IN PROGRESS
    truncatable = true
    temp = p
    if !primes.include?(temp)
        truncatable = false
        temp = temp/10
    elsif !primes.include(temp)
        truncatable = false
        temp = temp/10
    end
    
end

    
        
        