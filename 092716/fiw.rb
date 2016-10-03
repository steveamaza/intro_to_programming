def numbers_to_words
  word_units = {
    "0" => "",
    "1" => "one",
    "2" => "two",
    "3" => "three",
    "4" => "four",
    "5" => "five",
    "6" => "six",
    "7" => "seven",
    "8" => "eight",
    "9" => "nine"
  }

  word_teens = {
    "10" => "ten",
    "11" => "eleven",
    "12" => "twelve",
    "13" => "thirteen",
    "14" => "fourteen",
    "15" => "fifteen",
    "16" => "sixteen",
    "17" => "seventeen",
    "18" => "eighteen",
    "19" => "nineteen"
  }

  word_tens = {
    "0" => ""
    "2" => "twenty"
    "3" => "thirty"
    "4" => "forty"
    "5" => "fifty"
    "6" => "sixty"
    "7" => "seventy"
    "8" => "eighty"
    "9" => "ninety"
  }

  length = x.length
    if length == 3
        hundred = x[0]
        if hundred == "0"
            hundred_in_word = ""
        else
            hundred_in_word = word_units[hundred] + " hundred"
        end
        tens = x[1,2]
        #Check if teens
        if tens[0] == "1"
            tens_in_word = word_teens[tens]
        else
            tens_in_word = word_tens[tens[0]] +" "+ word_units[tens[1]]
        end
        not hundred_in_word.empty? and tens_in_word.strip.empty? ? tens_in_word = tens_in_word : tens_in_word = " and " + tens_in_word
        word = hundred_in_word + tens_in_word

    elsif length == 2
        tens = x
        #Check if its is one_tens
        if tens[0] == "1"
            word = word_tens[tens]
        else
            word = word_tens[tens[0]] +" "+ word_units[tens[1]]
        end
    elsif length == 1
        word = word_units[x]
    else
        puts "x must be a number between 0 and 100"
    end
  end
