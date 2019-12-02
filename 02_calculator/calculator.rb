#write your code here
def add(num1, num2)
    num1 + num2
end
def subtract(num1, num2)
    num1 - num2
end
def sum(array)
    total = 0
    array.each do |i|
        total = total + i
    end
    total
end
def multiply(num1, num2, num3 = 1)
    num1 * num2 * num3
end
def power(num1, num2)
    num2 = num2 - 1
    num2.times do
        num1 = num1 * num1
    end
    num1
end
def factorial(num)
    numArray = []
    while num > 0 do
        numArray.push(num)
        num = num - 1
    end
    factNum = 0
    if numArray != []
        factNum = 1
    end
    numArray.each do |i|
        factNum = factNum * i
    end
    factNum
end