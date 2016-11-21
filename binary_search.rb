ARR = [1,2,3,5,7,9,12,23,34,45,65]
# Find the index of letter in the array
def find(num)
  $lowest = 0
  $highest = ARR.count

  while $lowest < $highest do
    middle_index = (($lowest + $highest) / 2).floor
    middle_value = ARR[middle_index]
    if num == middle_value
      puts "Index is #{middle_index}"
      break
    elsif num < middle_value
      $highest = middle_index - 1
    elsif num > middle_value
      $lowest = middle_index + 1
    end
  end
  puts 'No target found'
end
