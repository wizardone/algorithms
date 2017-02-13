INPUT = [1,3,5,2,8,9,7,6]
def find_pair(sum)
  INPUT.each do |f|
    INPUT.each do |s|
      return "matching pair is #{f} and #{s} " if f + s == sum
    end
  end
end
