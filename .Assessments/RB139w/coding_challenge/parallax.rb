class Parallax
  def self.shift(str1, str2)
    candidates = get_candidates(str1)

    valid_candidates = candidates.select do |candidate|
      str2.match(candidate)
    end

    if valid_candidates.any?
      final_string(str1, valid_candidates)
    else
      String.new(str1)
    end
  end

  def self.get_candidates(str)
    list = []

    (0...str.length - 3).each do |i|
      char1 = str[i]
      char2 = str[i + 1]
      char3 = str[i + 2]

      if char1.ord > char2.ord && char2.ord > char3.ord
        list << str[i, 3]
      end
    end

    list
  end

  def self.final_string(str, list)
    front_str = ""
    end_str = ""

    list.each_with_index do |substr, i|
      i.even? ? front_str.prepend(substr) : end_str.concat(substr)
    end

    front_str + str + end_str
  end
end
