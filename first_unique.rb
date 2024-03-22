# input: string s
# output: index of first unique char
#
def first_uniq_char(s)
  s.chars.each_with_index do |c, index|
    # return if end of array
    return index if index == s.length - 1

    # if not found, we're unique and we win!
    return index unless s_chars[index+1..].includes?(c)
  end
end
