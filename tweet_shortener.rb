def dictionary
  tweet_shortener = {
    "hello" => "hi",
    "two" => "2",
    "to" => "2",
    "too" => "2",
    "four" => "4",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
  return_arr = []
  string_to_arr = string.split(" ")
  string_to_arr.each {|word|
    if dictionary.has_key?(word.downcase)
      return_arr << dictionary[word.downcase]
    else
      return_arr << word
    end
  }
  return_arr.join(" ")
end

def bulk_tweet_shortener(arr_of_tweets)
  arr_of_tweets.each {|tweet|
    puts word_substituter(tweet)
  }
end

def selective_tweet_shortener(tweet)
  if tweet.length <= 140
    return tweet
  else
    return word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  new_tweet = word_substituter(tweet)
  if new_tweet.length > 140
    return new_tweet[0..136] + "..."
  else
    return new_tweet
  end
end
