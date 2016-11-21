arr = [5,1,4,2,8]
def bubble_sort(arr)
  length = arr.size - 1
  loop do
    swapped = false
    for i in 0..length do
      curr = arr[i]
      nex = arr[i+1]
      #puts arr.join(',')
      if nex && curr > nex
        swapped = true
        arr[i] = nex
        arr[i+1] = curr
      end
    end
    break if swapped == false
  end
  arr
end

n = bubble_sort(arr)
puts n
