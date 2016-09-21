baseTwo=""
baseTen=""
firstHalf=""
secondHalf=""
answer=0
for x in 1..1000000 do
    baseTenBool =false
    baseTwoBool = false
    baseTen = x
    baseTwo = x.to_s(2)
    baseTen = baseTen.to_s
    if baseTwo.length%2==0
        firstHalf = baseTwo[0...baseTwo.length/2]
        secondHalf = baseTwo[baseTwo.length/2...baseTwo.length]
        secondHalf.reverse!
        baseTwoBool=true if firstHalf==secondHalf
    else
        firstHalf = baseTwo[0...baseTwo.length/2]
        secondHalf = baseTwo[baseTwo.length/2+1...baseTwo.length]
        secondHalf.reverse!
        baseTwoBool = true if firstHalf==secondHalf
    end
    if baseTen.length%2==0
        firstHalf = baseTen[0...baseTen.length/2]
        secondHalf = baseTen[baseTen.length/2...baseTen.length]
        secondHalf.reverse!
        baseTenBool = true if firstHalf==secondHalf
    else
        firstHalf = baseTen[0...baseTen.length/2]
        secondHalf = baseTen[baseTen.length/2+1...baseTen.length]
        secondHalf.reverse!
        baseTenBool= true if firstHalf==secondHalf
    end
    puts "#{baseTen}    #{baseTwo}"
    
    
    
    answer+=x if baseTenBool && baseTwoBool
end
puts answer
    
    