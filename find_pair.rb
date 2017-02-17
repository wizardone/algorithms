INPUT = [1,2,3,4,5,6,7,9]
def find_pair(sum)
  start = 0
  finish = INPUT.length-1

  while start < finish
    return "Match: #{INPUT[start]}, #{INPUT[finish]}" if INPUT[start] + INPUT[finish] == sum

    finish -= 1 if INPUT[start] + INPUT[finish] > sum
    start += 1 if INPUT[start] + INPUT[finish] < sum
  end
end
