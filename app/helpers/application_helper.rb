module ApplicationHelper

  def convert_nato
    space_break.gsub(/[a-z]/, 'a' => 'Alpha ', 'b' => 'Bravo ', 'c' => 'Charlie ','d' => 'Dela ','e' => 'Echo ', 'f' => 'Foxtrot ', 'g' => 'Golf ', 'h' => 'Hotel ', 'i' => 'India ', 'j' => 'Juliett ', 'k' => 'Kilo ', 'l' => 'Lima ', 'm' => 'Mike ', 'n' => 'November ', 'o' => 'Oscar ', 'p' => 'Papa ', 'q' => 'Quebec ', 'r' => 'Romeo ', 's' => 'Sierra ', 't' => 'Tango ', 'u' => 'Uniform ', 'v' => 'Victor ', 'w' => 'Whiskey ', 'x' => 'X-ray ', 'y' => 'Yankee ', 'z' => 'Zulu ')
  end

  def convert_italian
    space_break.gsub(/[a-z]/, 'a' => 'Ancona ', 'b' => 'Bologna ', 'c' => 'Como ','d' => 'Domodossola ','e' => 'Empoli ', 'f' => 'Firenze ', 'g' => 'Genova ', 'h' => 'Hotel ', 'i' => 'Imola ', 'j' => 'Ilunga ', 'k' => 'Kursaal ', 'l' => 'Livorno ', 'm' => 'Milano ', 'n' => 'Napoli ', 'o' => 'Otranto ', 'p' => 'Padova ', 'q' => 'Quarto ', 'r' => 'Roma ', 's' => 'Savona ', 't' => 'Torino ', 'u' => 'Udine ', 'v' => 'Venezia ', 'w' => 'Washington ', 'x' => 'Ics ', 'y' => 'York ', 'z' => 'Zara ')
  end

  def convert_english
    space_break.gsub(/[a-z]/, 'a' => 'Andrew ', 'b' => 'Benjamin ', 'c' => 'Charlie ','d' => 'David ','e' => 'Edward ', 'f' => 'Fredrick ', 'g' => 'George ', 'h' => 'Harry ', 'i' => 'Isaac ', 'j' => 'Jack ', 'k' => 'King ', 'l' => 'Lucy ', 'm' => 'Mary ', 'n' => 'Nelli ', 'o' => 'Oliver ', 'p' => 'Peter ', 'q' => 'Queenie ', 'r' => 'Robert ', 's' => 'Sugar ', 't' => 'Tommy ', 'u' => 'Uncle ', 'v' => 'Victor ', 'w' => 'William ', 'x' => 'Xmas ', 'y' => 'Yellow ', 'z' => 'Zebra ')
  end

  def convert_german
    space_break.gsub(/[a-z]/, 'a' => 'Anton ', 'b' => 'Berta ', 'c' => 'Casar ','d' => 'Dora ','e' => 'Emil ', 'f' => 'Friedrich ', 'g' => 'Gustav ', 'h' => 'Heinrich ', 'i' => 'Ida ', 'j' => 'Julius ', 'k' => 'Kaufmann ', 'l' => 'Ludwig ', 'm' => 'Martha ', 'n' => 'Nordpol ', 'o' => 'Otto ', 'p' => 'Paula ', 'q' => 'Quelle ', 'r' => 'Richard ', 's' => 'Samuel ', 't' => 'Theodor ', 'u' => 'Ulrich ', 'v' => 'Viktor ', 'w' => 'Wilhelm ', 'x' => 'Xanthippe ', 'y' => 'Ypsilon ', 'z' => 'Zeppelin ')
  end

  def convert_morse
    morse_break.gsub(/[a-z]/, 'a' => '.- ', 'b' => '-... ', 'c' => '-.-. ','d' => '-.. ','e' => '. ', 'f' => '..-. ', 'g' => '--. ', 'h' => '.... ', 'i' => '.. ', 'j' => '.--- ', 'k' => '-.- ', 'l' => '.-.. ', 'm' => '-- ', 'n' => '-. ', 'o' => '--- ', 'p' => '.--. ', 'q' => '--.- ', 'r' => '.-. ', 's' => '... ', 't' => '- ', 'u' => '..- ', 'v' => '...- ', 'w' => '.-- ', 'x' => '-..- ', 'y' => '-.-- ', 'z' => '--.. ')
  end

  def space_break
   @phonetic.word.downcase.gsub(/ /, ' - ')
  end

  def morse_break
   @phonetic.word.downcase.gsub(/ /, " / ")
  end
end
