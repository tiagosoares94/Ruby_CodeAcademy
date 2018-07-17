=begin
A script to sort alphabetically an array
=end

def alphabetize(arr, rev=false)
  arr.sort!
  if rev==true
    return arr.reverse!
  end
   return arr
end

words = ["a","t","b","x","j"]

puts alphabetize(words,true) #true parameter = reverse sort
