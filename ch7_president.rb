# Write a program that filters out banned_phrases.
# Replace each negative word or phrase with the word "CENSORED".

test_tweets = [
  "This president sucks!",
  "I hate this Blank House!",
  "I can't believe we're living with such a bad leadership. We were so foolish",
  "President Presidentname is a danger to society. I hate that he's so bad – it sucks."
]

banned_phrases = ["sucks", "bad", "hate", "foolish", "danger to society"]
safe_tweets = []

test_tweets.each do |tweet|
  i = 0
  while i < banned_phrases.length do
    if tweet.include?(banned_phrases[i])
      tweet = tweet.gsub(banned_phrases[i], "CENSORED")
    end
    i += 1
  end
  safe_tweets.push(tweet)
end

puts safe_tweets