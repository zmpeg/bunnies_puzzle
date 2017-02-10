#!/usr/bin/env ruby

# partial solution
def idP(x,y)
    y*x + x
end

# partial solution
def idP2(x,y)
    min = [x,y].min
    y = y-min
    x = x-min
    "#{x}#{y}".to_i(2) + 1
end

def test(x, y, expect)
    state = 'FAIL'
    val = idP(x, y)
    state = 'OK  ' if val == expect
    puts "#{state}    (#{x},#{y}, #{expect})=#{val}"
end

test(1,1,1)
test(1,2,2)
test(2,1,3)
test(1,3,4)
test(2,2,5)
test(2,3,8)
test(3,1,6)
test(3,2,9)
test(2,4,12)
test(3,3,13)
test(4,2,14)




