def fibs(number)
  result = [0, 1]
  index = 2
  until index == number
    sum = result[index - 2] + result[index - 1]
    result << sum
    index += 1
  end
  result
end

def fibs_rec(number, result = [0, 1], index = 2)
  if index >= number
    result
  else
    result << result[index - 2] + result[index - 1]
    fibs_rec(number, result, index + 1)
  end
end


p fibs(8)

p fibs_rec(8)
