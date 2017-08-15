def substrings(word,dictionary)
  hash = {}
  words = word.to_s.downcase
  for i in 0...dictionary.length
    if /.*#{dictionary[i]}.*/.match(words)
			hash[dictionary[i]] = words.scan(/#{dictionary[i]}/).count
    end
  end
  puts hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)

substrings("Howdy partner, sit down! How's it going?", dictionary)
