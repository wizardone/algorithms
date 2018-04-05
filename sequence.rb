def sequence(seq)
  overall_max_count = 1
  current_max_count = 1
  current_letter = ''
  overall_letter = ''
  seq.chars.each_index do |index|
    current_letter = seq.chars[index]
    if seq.chars[index + 1] == current_letter
      current_max_count += 1
    else
      if current_max_count > overall_max_count
        overall_letter = current_letter
        overall_max_count = current_max_count
      end
      current_max_count = 1
    end
  end
  { overall_letter => overall_max_count }
end
