# @param {String} s
# @return {String}
#
def reverse_words(s)
  words = s.split
  reverse_words = []
  words.each do |word|
    reverse_words.append(word)
  end

  reverse_words.join(" ")
end
